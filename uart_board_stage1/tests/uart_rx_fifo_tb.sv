`timescale 1ns/1ps

// End-to-end simulation: the learner's ORIGINAL uart_rx, overridden to 868,
// drives the new event FIFO. No edits to uart_rx are required by this test.
module uart_rx_fifo_tb;
    localparam integer CPB = 868;
    reg clk = 0;
    always #5 clk = ~clk;
    reg rst = 1;
    reg rx = 1;
    wire [7:0] data_out;
    wire valid;
    wire framing_error;
    reg [31:0] command = 0;
    wire [31:0] status;
    integer i;
    integer valid_pulses = 0;
    integer error_pulses = 0;
    reg previous_valid = 0;
    reg previous_error = 0;
    reg [7:0] expected [0:63];

    uart_rx #(.CLKS_PER_BIT(CPB)) receiver (
        .clk(clk), .rst(rst), .rx(rx), .data_out(data_out),
        .valid(valid), .framing_error(framing_error)
    );
    uart_event_fifo fifo (
        .clk(clk), .rst(rst), .data_in(data_out),
        .valid_in(valid), .framing_error_in(framing_error),
        .command(command), .status(status)
    );

    always @(posedge clk) begin
        if (!rst) begin
            if (valid) valid_pulses = valid_pulses + 1;
            if (framing_error) error_pulses = error_pulses + 1;
            if (valid && previous_valid) $fatal(1, "valid was wider than one clock");
            if (framing_error && previous_error) $fatal(1, "error was wider than one clock");
            if (valid && framing_error) $fatal(1, "RX asserted valid and framing_error together");
        end
        previous_valid = valid;
        previous_error = framing_error;
    end

    task bit_time;
        input reg level;
        begin
            @(negedge clk);
            rx = level;
            repeat (CPB) @(posedge clk);
        end
    endtask

    task send_frame;
        input reg [7:0] value;
        input reg good_stop;
        integer k;
        begin
            bit_time(0);
            for (k = 0; k < 8; k = k + 1)
                bit_time(value[k]);
            bit_time(good_stop);
        end
    endtask

    task pop_and_check;
        input reg [7:0] expected_byte;
        input reg expected_error;
        reg request;
        begin
            #1;
            if (status[31:24] !== 8'hA5 || status[9] !== 1'b1 ||
                status[10] !== 1'b0 || status[8] !== expected_error ||
                status[12] !== !expected_error || status[7:0] !== expected_byte) begin
                $display("FAIL queue head status=%08x expected_data=%02x expected_error=%0d",
                         status, expected_byte, expected_error);
                $fatal(1);
            end
            request = !status[11];
            @(negedge clk);
            command = {29'b0, 2'b01, request};
            @(posedge clk);
            #1;
            if (status[11] !== request) $fatal(1, "POP acknowledgment missing");
        end
    endtask

    initial begin
        repeat (5) @(posedge clk);
        @(negedge clk);
        rst = 0;
        repeat (CPB) @(posedge clk);

        // 64 contiguous 8N1 frames, with exactly one stop bit per frame.
        for (i = 0; i < 64; i = i + 1) begin
            expected[i] = (i * 37) ^ 8'h55;
            send_frame(expected[i], 1);
        end

        // A bad stop bit followed by an extended low line creates one
        // error event, never the previous successful byte as new data.
        send_frame(8'hA9, 0);
        repeat (3*CPB) @(posedge clk);
        if (error_pulses != 1) $fatal(1, "Bad-stop/low-line event count incorrect");
        if (data_out !== expected[63]) $fatal(1, "Original UART behavior changed unexpectedly");
        bit_time(1);
        bit_time(1);
        send_frame(8'h5A, 1);
        send_frame(8'h07, 0);
        bit_time(1);
        bit_time(1);
        send_frame(8'h00, 1);
        bit_time(1);
        repeat (10) @(posedge clk);
        #1;

        if (valid_pulses != 66 || error_pulses != 2 || status[23:13] != 68)
            $fatal(1, "Unexpected event totals valid=%0d error=%0d stored=%0d",
                   valid_pulses, error_pulses, status[23:13]);
        // Simulate slow software: events remain after the wire goes idle.
        repeat (2000) @(posedge clk);
        for (i = 0; i < 64; i = i + 1)
            pop_and_check(expected[i], 0);
        pop_and_check(0, 1);
        pop_and_check(8'h5A, 0);
        pop_and_check(0, 1);
        pop_and_check(8'h00, 0);
        #1;
        if (status[9] || status[23:13] != 0) $fatal(1, "Queue not empty after drain");
        $display("PASS uart_rx_fifo_tb: 100 MHz/868, 64-frame contiguous burst, 66 good + 2 bad events, recovery and deferred software reads");
        $finish;
    end

    initial begin
        #20000000;
        $fatal(1, "UART integration test timed out");
    end
endmodule
