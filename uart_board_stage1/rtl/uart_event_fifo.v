`timescale 1ns/1ps

// Capture one-clock UART events for software reads through a dual AXI GPIO.
// Both GPIO channels and this module MUST use the same clk/reset domain.
// ADDR_WIDTH must be in 1..10; the default holds 1024 events.
// This deliberately uses an asynchronous head read (distributed/LUT RAM).
// No BRAM resource claim is made; inspect the Vivado utilization report.
//
// status[31:24] = 8'hA5 (protocol signature)
// status[23:13] = occupancy (0..1024)
// status[12]    = head contains a valid byte
// status[11]    = last accepted command toggle
// status[10]    = sticky overflow (an incoming event was dropped)
// status[9]     = queue nonempty
// status[8]     = head framing error
// status[7:0]   = head byte; zero if empty or framing error
//
// command[0]   = request toggle; change it to issue exactly one command
// command[2:1] = 0: NOP, 1: POP, 2: CLEAR, 3: reserved NOP
// Software must wait for status[11] == command[0] before issuing another.
// CLEAR discards any event arriving on its execution clock edge.
// A full queue accepts a simultaneous POP + incoming event without loss.
// A framing-error event records no byte: original uart_rx leaves data_out
// unchanged for a bad stop bit, so storing that byte would mislabel old data.
module uart_event_fifo #(
    parameter integer ADDR_WIDTH = 10
) (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000" *)
    input wire clk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *)
    input wire rst,
    input wire [7:0] data_in,
    input wire valid_in,
    input wire framing_error_in,
    input wire [31:0] command,
    output wire [31:0] status
);
    localparam [ADDR_WIDTH:0] FIFO_DEPTH = (1 << ADDR_WIDTH);

    (* ram_style = "distributed" *) reg [8:0] memory [0:(1 << ADDR_WIDTH)-1];
    reg [ADDR_WIDTH-1:0] read_pointer;
    reg [ADDR_WIDTH-1:0] write_pointer;
    reg [ADDR_WIDTH:0] occupancy;
    reg overflow;
    reg ack_toggle;

    wire nonempty = (occupancy != 0);
    wire new_command = (command[0] != ack_toggle);
    wire clear_requested = new_command && (command[2:1] == 2'b10);
    wire pop_accepted = new_command && (command[2:1] == 2'b01) && nonempty;
    wire event_requested = valid_in || framing_error_in;
    wire push_accepted = event_requested &&
                         ((occupancy != FIFO_DEPTH) || pop_accepted);
    wire [8:0] head = nonempty ? memory[read_pointer] : 9'b0;
    wire [10:0] occupancy_field = occupancy;

    assign status = {8'hA5, occupancy_field,
                     (nonempty && !head[8]), ack_toggle, overflow,
                     nonempty, (nonempty && head[8]),
                     ((nonempty && !head[8]) ? head[7:0] : 8'b0)};

    always @(posedge clk) begin
        if (rst) begin
            read_pointer <= 0;
            write_pointer <= 0;
            occupancy <= 0;
            overflow <= 1'b0;
            ack_toggle <= 1'b0;
        end else begin
            if (new_command)
                ack_toggle <= command[0];

            if (clear_requested) begin
                read_pointer <= 0;
                write_pointer <= 0;
                occupancy <= 0;
                overflow <= 1'b0;
            end else begin
                if (event_requested && !push_accepted)
                    overflow <= 1'b1;

                if (push_accepted) begin
                    memory[write_pointer] <= {framing_error_in,
                        (framing_error_in ? 8'b0 : data_in)};
                    write_pointer <= write_pointer + 1'b1;
                end
                if (pop_accepted)
                    read_pointer <= read_pointer + 1'b1;

                case ({push_accepted, pop_accepted})
                    2'b10: occupancy <= occupancy + 1'b1;
                    2'b01: occupancy <= occupancy - 1'b1;
                    default: occupancy <= occupancy;
                endcase
            end
        end
    end
endmodule
