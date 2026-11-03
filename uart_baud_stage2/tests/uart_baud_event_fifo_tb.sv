`timescale 1ns/1ps

// Self-checking FIFO test, including the DEFAULT 1024-event capacity.
module uart_baud_event_fifo_tb;
    localparam integer DEPTH = 1024;
    reg clk = 0;
    always #5 clk = ~clk;
    reg rst = 1;
    reg [7:0] data_in = 0;
    reg valid_in = 0;
    reg framing_error_in = 0;
    reg [31:0] command = 0;
    wire [31:0] status;

    wire [2:0] baud_code;
    wire rx_flush;
    uart_baud_event_fifo dut (
        .clk(clk), .rst(rst), .data_in(data_in),
        .valid_in(valid_in), .framing_error_in(framing_error_in),
        .command(command), .status(status), .baud_code(baud_code), .rx_flush(rx_flush)
    );

    reg [8:0] model_memory [0:DEPTH-1];
    integer model_head = 0;
    integer model_tail = 0;
    integer model_count = 0;
    reg model_overflow = 0;
    reg model_ack = 0;
    reg model_flush = 1;
    reg [2:0] model_baud = 4;
    integer checks = 0;
    integer i;
    integer random_value;
    integer seed = 32'h2471b32a;
    reg [31:0] next_command;

    task check_status;
        reg [31:0] expected;
        reg [8:0] expected_head;
        begin
            expected_head = (model_count != 0) ? model_memory[model_head] : 9'b0;
            expected = 32'hB0000000 | (model_baud << 24);
            expected[23:13] = model_count;
            expected[12] = (model_count != 0) && !expected_head[8];
            expected[11] = model_ack;
            expected[10] = model_overflow;
            expected[9] = (model_count != 0);
            expected[8] = (model_count != 0) && expected_head[8];
            expected[7:0] = ((model_count != 0) && !expected_head[8]) ? expected_head[7:0] : 0;
            checks = checks + 1;
            if (rx_flush !== model_flush || baud_code !== model_baud)
                $fatal(1, "baud/flush output differs from model");
            if (status !== expected) begin
                $display("FAIL check=%0d time=%0t status=%08x expected=%08x count=%0d cmd=%08x",
                         checks, $time, status, expected, model_count, command);
                $fatal(1);
            end
        end
    endtask

    task step;
        input reg [31:0] cmd;
        input reg byte_valid;
        input reg frame_error;
        input reg [7:0] value;
        reg execute_command;
        reg do_pop;
        reg do_baud;
        reg accept_event;
        begin
            @(negedge clk);
            command = cmd;
            valid_in = byte_valid;
            framing_error_in = frame_error;
            data_in = value;
            execute_command = (cmd[0] != model_ack);
            do_baud = execute_command && (cmd[2:1] == 3) && cmd[5:3] < 6;
            do_pop = execute_command && (cmd[2:1] == 1) && (model_count != 0);
            accept_event = (byte_valid || frame_error) && ((model_count < DEPTH) || do_pop);
            if (execute_command)
                model_ack = cmd[0];
            if (do_baud) model_baud = cmd[5:3];
            if ((execute_command && (cmd[2:1] == 2)) || do_baud || model_flush) begin
                model_head = 0;
                model_tail = 0;
                model_count = 0;
                model_overflow = 0;
            end else begin
                if ((byte_valid || frame_error) && !accept_event)
                    model_overflow = 1;
                if (do_pop) begin
                    model_head = (model_head + 1) % DEPTH;
                    model_count = model_count - 1;
                end
                if (accept_event) begin
                    model_memory[model_tail] = {frame_error, (frame_error ? 8'b0 : value)};
                    model_tail = (model_tail + 1) % DEPTH;
                    model_count = model_count + 1;
                end
            end
            model_flush = do_baud;
            @(posedge clk);
            #1;
            check_status();
        end
    endtask

    task send_command;
        input reg [1:0] opcode;
        begin
            step({29'b0, opcode, !model_ack}, 0, 0, 0);
        end
    endtask

    task push_good;
        input reg [7:0] value;
        begin
            step(command, 1, 0, value);
        end
    endtask

    initial begin
        repeat (3) @(posedge clk);
        #1;
        check_status();
        @(negedge clk);
        rst = 0;

        step(command, 0, 0, 0); // drain reset flush pulse

        // Empty POP acknowledges but neither underflows nor invents a byte.
        send_command(1);
        // One-clock event persists indefinitely until explicitly popped.
        push_good(8'h55);
        repeat (20) step(command, 0, 0, 0);
        push_good(8'hA6);
        push_good(8'h00);
        send_command(1);
        // Holding request+opcode must not repeat the POP.
        repeat (20) step(command, 0, 0, 0);
        send_command(0);
        step({26'b0, 3'd7, 2'b11, !model_ack}, 0, 0, 0); // invalid config NOP
        send_command(1);
        send_command(1);
        send_command(1);

        // CLEAR deliberately wins over a simultaneous arriving event.
        push_good(8'h80);
        step({29'b0, 2'b10, !model_ack}, 1, 0, 8'hFE);
        step(command, 0, 0, 0);
        push_good(8'h11);
        // Accepted POP + push replaces the single head, preserving count.
        step({29'b0, 2'b01, !model_ack}, 1, 0, 8'h22);
        send_command(1);
        // Empty POP + push keeps the NEW event available.
        step({29'b0, 2'b01, !model_ack}, 1, 0, 8'h33);
        send_command(1);

        // Bad frames never reuse data_out from the prior good UART frame.
        push_good(8'hD7);
        step(command, 0, 1, 8'hD7);
        step(command, 1, 1, 8'hBE); // error wins if both inputs asserted
        send_command(1);
        send_command(1);
        send_command(1);
        send_command(2);

        // Configuration flushes previous data and both event-race edges.
        push_good(8'h39);
        step({26'b0, 3'd0, 2'b11, !model_ack}, 1, 0, 8'hAA);
        step(command, 1, 1, 8'hBB); // stale receiver pulse during rx_flush
        step(command, 0, 0, 0);
        if (status[23:13] != 0 || baud_code != 0) $fatal(1, "config flush failed");
        push_good(8'h66);
        // Holding the same SET_BAUD request must not clear again.
        repeat (8) step(command, 0, 0, 0);
        step({26'b0, 3'd6, 2'b11, !model_ack}, 0, 0, 0);
        if (status[23:13] != 1 || baud_code != 0) $fatal(1, "invalid config modified FIFO");
        send_command(2);
        if (baud_code != 0) $fatal(1, "CLEAR changed baud");
        for (i = 0; i < 6; i = i + 1) begin
            step((i << 3) | (3 << 1) | !model_ack, 0, 0, 0);
            step(command, 0, 0, 0);
            if (baud_code != i) $fatal(1, "baud readback failed");
        end

        // Fill the DEFAULT 1024-entry queue and prove exact full occupancy.
        for (i = 0; i < DEPTH; i = i + 1)
            push_good(i[7:0]);
        if (status[23:13] != DEPTH || status[10]) $fatal(1, "capacity failed");
        // Full simultaneous POP + push must be lossless and not overflow.
        step({29'b0, 2'b01, !model_ack}, 1, 0, 8'hE5);
        // Invalid baud codes also preserve a full queue without setting loss.
        step({26'b0, 3'd7, 2'b11, !model_ack}, 0, 0, 0);
        if (status[23:13] != DEPTH || status[10]) $fatal(1, "invalid code full queue failed");
        // Another event without POP is dropped, marking sticky overflow.
        push_good(8'hF6);
        for (i = 0; i < DEPTH; i = i + 1)
            send_command(1);
        if (!status[10] || status[9]) $fatal(1, "sticky overflow failed");
        step({26'b0, 3'd4, 2'b11, !model_ack}, 0, 0, 0);
        step(command, 0, 0, 0);
        if (status[10] || status[9] || baud_code != 4)
            $fatal(1, "SET_BAUD did not clear sticky overflow");

        // Multiple pointer wraps with order checked on every clock.
        for (i = 0; i < 3*DEPTH; i = i + 1) begin
            push_good(i[7:0]);
            send_command(1);
        end

        // Deterministic mixed traffic, including pulses, held commands,
        // NOP/reserved opcodes, clears and concurrent enqueue/dequeue.
        for (i = 0; i < 12000; i = i + 1) begin
            random_value = $random(seed);
            next_command = command;
            if (random_value[0]) begin
                next_command[0] = !model_ack;
                next_command[2:1] = random_value[3:2];
            end
            next_command[5:3] = random_value[18:16];
            step(next_command, random_value[4], random_value[5] && random_value[6],
                 random_value[15:8]);
        end

        // Reset flushes buffered data and all state without clearing RAM.
        @(negedge clk);
        rst = 1;
        command = 0;
        valid_in = 0;
        framing_error_in = 0;
        model_head = 0;
        model_tail = 0;
        model_count = 0;
        model_overflow = 0;
        model_ack = 0;
        model_baud = 4;
        model_flush = 1;
        @(posedge clk);
        #1;
        check_status();
        $display("PASS uart_baud_event_fifo_tb: %0d status checks; capacity=%0d; pulse/order/ack/clear/full/overflow/wrap/error/reset/baud/readback/invalid-code/stale-event-flush", checks, DEPTH);
        $finish;
    end

    initial begin
        #1000000;
        $fatal(1, "FIFO test timed out");
    end
endmodule
