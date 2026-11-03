`timescale 1ns/1ps

// Runtime-selectable 8N1 UART diagnostic receiver, 100 MHz clock domain.
// No PLL, divided clock or new clock domain is introduced.
//
// GPIO command[0]   : request toggle; wait for status[11] == command[0].
// GPIO command[2:1] : NOP=0, POP=1, CLEAR=2, SET_BAUD=3.
// GPIO command[5:3] : SET_BAUD code, ignored for other commands.
//   0=9600, 1=19200, 2=38400, 3=57600, 4=115200(default), 5=230400.
//   Codes 6/7 acknowledge without changing the baud, FIFO or overflow flag.
// SET_BAUD clears the FIFO/overflow and aborts an in-progress receive frame.
// Stop the transmitter before SET_BAUD. CLEAR changes only FIFO state.
//
// status[31:24] = 8'hB0 | actual baud code (hardware readback/version).
// status[23:13] = FIFO occupancy, 0..1024.
// status[12] = head byte valid; [11] = command ACK; [10] = sticky overflow;
// status[9] = nonempty; [8] = head framing error; [7:0] = valid head byte.
// An error event has no valid byte: data bits are zero, valid is false.
module uart_diag_baud_core (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000" *)
    input wire clk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *)
    input wire rst,
    input wire rx,
    input wire [31:0] command,
    output wire [31:0] status
);
    wire [2:0] baud_code;
    reg [15:0] clocks_per_bit;
    wire rx_flush;
    wire [7:0] data_out;
    wire valid;
    wire framing_error;

    // Nearest integer cycles per bit at exactly 100,000,000 Hz.
    always @* begin
        case (baud_code)
            3'd0: clocks_per_bit = 16'd10417;
            3'd1: clocks_per_bit = 16'd5208;
            3'd2: clocks_per_bit = 16'd2604;
            3'd3: clocks_per_bit = 16'd1736;
            3'd4: clocks_per_bit = 16'd868;
            3'd5: clocks_per_bit = 16'd434;
            default: clocks_per_bit = 16'd868;
        endcase
    end

    uart_rx_baud uart_receiver (
        .clk(clk), .rst(rst), .flush(rx_flush), .rx(rx),
        .clocks_per_bit(clocks_per_bit), .data_out(data_out),
        .valid(valid), .framing_error(framing_error)
    );

    uart_baud_event_fifo event_fifo (
        .clk(clk), .rst(rst), .data_in(data_out), .valid_in(valid),
        .framing_error_in(framing_error), .command(command), .status(status),
        .baud_code(baud_code), .rx_flush(rx_flush)
    );
endmodule


// The two input synchronizer stages are kept in this receiver instance.
// Only the asynchronous external RX -> rx_meta/D path is false-pathed in XDC.
// The rx_meta -> rx_sync path must retain normal timing checks.
module uart_rx_baud (
    input wire clk,
    input wire rst,
    input wire flush,
    input wire rx,
    input wire [15:0] clocks_per_bit,
    output reg [7:0] data_out,
    output reg valid,
    output reg framing_error
);
    localparam IDLE = 3'd0, START = 3'd1, DATA = 3'd2,
               STOP = 3'd3, WAIT_HIGH = 3'd4;
    reg [2:0] state;
    reg [15:0] count;
    reg [2:0] bit_index;
    reg [7:0] data_shift;
    (* ASYNC_REG = "TRUE" *) reg rx_meta;
    (* ASYNC_REG = "TRUE" *) reg rx_sync;
    wire [15:0] half_bit = clocks_per_bit >> 1;

    always @(posedge clk) begin
        if (rst) begin
            rx_meta <= 1'b1;
            rx_sync <= 1'b1;
        end else begin
            rx_meta <= rx;
            rx_sync <= rx_meta;
        end
    end

    always @(posedge clk) begin
        if (rst || flush) begin
            state <= IDLE;
            count <= 0;
            bit_index <= 0;
            data_shift <= 0;
            data_out <= 0;
            valid <= 0;
            framing_error <= 0;
        end else begin
            valid <= 0;
            framing_error <= 0;
            case (state)
                IDLE: begin
                    count <= 0;
                    if (!rx_sync) state <= START;
                end
                START: begin
                    if (count == half_bit - 1'b1) begin
                        count <= 0;
                        if (!rx_sync) begin
                            bit_index <= 0;
                            state <= DATA;
                        end else state <= IDLE;
                    end else count <= count + 1'b1;
                end
                DATA: begin
                    if (count == clocks_per_bit - 1'b1) begin
                        count <= 0;
                        data_shift[bit_index] <= rx_sync;
                        if (bit_index == 7) state <= STOP;
                        else bit_index <= bit_index + 1'b1;
                    end else count <= count + 1'b1;
                end
                STOP: begin
                    if (count == clocks_per_bit - 1'b1) begin
                        count <= 0;
                        if (rx_sync) begin
                            data_out <= data_shift;
                            valid <= 1;
                            state <= IDLE;
                        end else begin
                            framing_error <= 1;
                            state <= WAIT_HIGH;
                        end
                    end else count <= count + 1'b1;
                end
                // A sustained low BREAK gives one error, then waits for high.
                WAIT_HIGH: if (rx_sync) state <= IDLE;
                default: state <= IDLE;
            endcase
        end
    end
endmodule


// Same LUT/distributed-RAM FIFO architecture as stage 1. ADDR_WIDTH=10
// holds 1024 events. The supported parameter range is 1..10.
module uart_baud_event_fifo #(
    parameter integer ADDR_WIDTH = 10
) (
    input wire clk,
    input wire rst,
    input wire [7:0] data_in,
    input wire valid_in,
    input wire framing_error_in,
    input wire [31:0] command,
    output wire [31:0] status,
    output reg [2:0] baud_code,
    output reg rx_flush
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
    wire baud_requested = new_command && (command[2:1] == 2'b11) &&
                          (command[5:3] < 3'd6);
    wire pop_accepted = new_command && (command[2:1] == 2'b01) && nonempty;
    wire event_requested = valid_in || framing_error_in;
    wire push_accepted = event_requested &&
                         ((occupancy != FIFO_DEPTH) || pop_accepted);
    wire [8:0] head = nonempty ? memory[read_pointer] : 9'b0;
    wire [10:0] occupancy_field = occupancy;

    assign status = {4'hB, 1'b0, baud_code, occupancy_field,
                     (nonempty && !head[8]), ack_toggle, overflow,
                     nonempty, (nonempty && head[8]),
                     ((nonempty && !head[8]) ? head[7:0] : 8'b0)};

    always @(posedge clk) begin
        if (rst) begin
            read_pointer <= 0;
            write_pointer <= 0;
            occupancy <= 0;
            overflow <= 0;
            ack_toggle <= 0;
            baud_code <= 3'd4;
            rx_flush <= 1;
        end else begin
            rx_flush <= baud_requested;
            if (new_command)
                ack_toggle <= command[0];
            if (baud_requested)
                baud_code <= command[5:3];

            // SET_BAUD wins on its execution edge. On the following edge
            // the receiver sees rx_flush; suppress its previous-cycle event
            // too, so no byte from the old configuration leaks into the FIFO.
            if (clear_requested || baud_requested || rx_flush) begin
                read_pointer <= 0;
                write_pointer <= 0;
                occupancy <= 0;
                overflow <= 0;
            end else begin
                if (event_requested && !push_accepted)
                    overflow <= 1;
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
