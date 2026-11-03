`timescale 1ns/1ps

// End-to-end serial-line stimulus at the nominal baud, not the DUT divider.
// Delays use 1e9 / requested_baud nanoseconds with 1 ps simulation precision,
// an asynchronous initial phase, and no alignment to the 100 MHz clock.
module uart_diag_baud_core_tb;
    reg clk = 0;
    always #5 clk = ~clk;
    reg rst = 1;
    reg rx = 1;
    reg [31:0] command = 0;
    wire [31:0] status;
    uart_diag_baud_core dut (
        .clk(clk), .rst(rst), .rx(rx), .command(command), .status(status)
    );

    integer nominal_baud;
    real bit_ns;
    integer code;
    integer i;
    integer good_checked = 0;
    integer error_checked = 0;

    function integer baud_from_code;
        input integer selected;
        begin
            case (selected)
                0: baud_from_code = 9600;
                1: baud_from_code = 19200;
                2: baud_from_code = 38400;
                3: baud_from_code = 57600;
                4: baud_from_code = 115200;
                5: baud_from_code = 230400;
                default: $fatal(1, "invalid TEST baud code");
            endcase
        end
    endfunction

    task issue;
        input integer opcode;
        input integer selected;
        reg wanted_ack;
        begin
            @(negedge clk);
            wanted_ack = !status[11];
            command = (selected << 3) | (opcode << 1) | wanted_ack;
            @(posedge clk);
            #1;
            if (status[11] !== wanted_ack) $fatal(1, "ACK not observed");
            repeat (4) @(posedge clk);
            #1;
        end
    endtask

    task configure;
        input integer selected;
        begin
            rx = 1;
            issue(3, selected);
            nominal_baud = baud_from_code(selected);
            bit_ns = 1.0e9 / nominal_baud;
            if (status[31:24] !== (8'hB0 | selected) || status[23:13] != 0 || status[10])
                $fatal(1, "configuration/readback failed, code=%0d status=%08x", selected, status);
            #(2.0 * bit_ns + 17.0);
        end
    endtask

    task send_bit;
        input reg level;
        begin
            rx = level;
            #(bit_ns);
        end
    endtask

    task send_byte;
        input reg [7:0] value;
        input reg bad_stop;
        integer bit_index;
        begin
            send_bit(0);
            for (bit_index = 0; bit_index < 8; bit_index = bit_index + 1)
                send_bit(value[bit_index]);
            send_bit(!bad_stop);
        end
    endtask

    task settle;
        begin
            rx = 1;
            #(2.0 * bit_ns);
        end
    endtask

    task expect_count;
        input integer expected;
        begin
            if (status[23:13] !== expected || status[10])
                $fatal(1, "count/overflow failure baud=%0d expected=%0d status=%08x",
                       nominal_baud, expected, status);
        end
    endtask

    task pop_good;
        input reg [7:0] value;
        begin
            if (!status[9] || !status[12] || status[8] || status[7:0] !== value)
                $fatal(1, "byte mismatch baud=%0d expected=%02x status=%08x", nominal_baud, value, status);
            good_checked = good_checked + 1;
            issue(1, 0);
        end
    endtask

    task pop_error;
        begin
            if (!status[9] || status[12] || !status[8] || status[7:0] !== 0)
                $fatal(1, "error event invalid/unknown byte mismatch, status=%08x", status);
            error_checked = error_checked + 1;
            issue(1, 0);
        end
    endtask

    initial begin
        repeat (5) @(posedge clk);
        @(negedge clk);
        rst = 0;
        repeat (5) @(posedge clk);
        #1;
        if (status !== 32'hB4000000) $fatal(1, "default baud/reset status differs: %08x", status);

        for (code = 0; code < 6; code = code + 1) begin
            configure(code);
            // 64 contiguous 8N1 frames, with exactly one stop bit each.
            for (i = 0; i < 64; i = i + 1)
                send_byte(i[7:0], 0);
            settle();
            expect_count(64);
            for (i = 0; i < 64; i = i + 1)
                pop_good(i[7:0]);
            expect_count(0);

            // Continuous BREAK longer than a whole frame must yield ONE event.
            rx = 0;
            #(30.0 * bit_ns);
            rx = 1;
            #(3.0 * bit_ns);
            send_byte(8'h55, 0);
            send_byte(8'hAA, 0);
            settle();
            expect_count(3);
            pop_error();
            pop_good(8'h55);
            pop_good(8'hAA);
            expect_count(0);

            // A malformed stop bit followed by explicit idle and new frames.
            send_byte(8'hD7, 1);
            send_bit(1);
            send_byte(8'h55, 0);
            send_byte(8'hAA, 0);
            settle();
            expect_count(3);
            pop_error();
            pop_good(8'h55);
            pop_good(8'hAA);
            expect_count(0);

            // CLEAR must preserve the hardware-reported baud code.
            issue(2, 0);
            if (status[31:24] !== (8'hB0 | code)) $fatal(1, "CLEAR changed baud");
            $display("PASS nominal baud %0d: 64 ordered bytes; one sustained-BREAK error + 55 AA; bad-stop + recovery", nominal_baud);
        end

        // Configuration clears both queued bytes and an incomplete frame.
        configure(4);
        send_byte(8'h42, 0);
        settle();
        expect_count(1);
        rx = 0;
        #(4.0 * bit_ns);
        configure(0); // sender stops; config aborts the partial old frame
        #(12.0 * bit_ns);
        expect_count(0);
        send_byte(8'h19, 0);
        settle();
        expect_count(1);
        pop_good(8'h19);

        // Invalid config is acknowledged but preserves FIFO and active baud.
        send_byte(8'hC3, 0);
        settle();
        issue(3, 6);
        if (status[31:24] != 8'hB0) $fatal(1, "invalid code changed baud");
        expect_count(1);
        issue(3, 7);
        expect_count(1);
        pop_good(8'hC3);

        // Re-applying the current valid baud still starts a clean session.
        send_byte(8'h77, 0);
        settle();
        issue(3, 0);
        expect_count(0);

        // Reset restores default 115200 and flushes buffered state.
        send_byte(8'h88, 0);
        settle();
        expect_count(1);
        @(negedge clk);
        command = 0;
        rst = 1;
        repeat (3) @(posedge clk);
        @(negedge clk);
        rst = 0;
        repeat (5) @(posedge clk);
        #1;
        if (status !== 32'hB4000000) $fatal(1, "reset did not restore default baud");
        $display("PASS uart_diag_baud_core_tb: %0d good + %0d error events; all 6 nominal baud rates; config/clear/readback/partial-abort/invalid/reset", good_checked, error_checked);
        $finish;
    end

    initial begin
        #300000000;
        $fatal(1, "serial integration test timed out");
    end
endmodule
