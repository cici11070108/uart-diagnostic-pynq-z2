`timescale 1ns/1ps
// Codex-assisted learning implementation. Use CLKS_PER_BIT >= 8.
module uart_rx #(
    parameter integer CLKS_PER_BIT = 868
) (
    input wire clk,
    input wire rst,
    input wire rx,
    output reg [7:0] data_out,
    output reg valid,          // One clock: data_out contains a received byte.
    output reg framing_error  // One clock: stop-bit sample was low.
);
    localparam IDLE = 3'd0, START = 3'd1, DATA = 3'd2,
               STOP = 3'd3, WAIT_HIGH = 3'd4;
    localparam CW = (CLKS_PER_BIT > 1) ? $clog2(CLKS_PER_BIT) : 1;
    reg [2:0] state;
    reg [CW-1:0] count;
    reg [2:0] bit_index;
    reg [7:0] data_shift;
    reg rx_meta, rx_sync;

    // Two sampling registers bring the input into the local clock domain.
    // Digital simulation cannot measure real metastability or board timing.
    always @(posedge clk) begin
        if (rst) begin
            rx_meta <= 1;
            rx_sync <= 1;
        end else begin
            rx_meta <= rx;
            rx_sync <= rx_meta;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
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
                    if (count == CLKS_PER_BIT/2-1) begin
                        count <= 0;
                        if (!rx_sync) begin
                            bit_index <= 0;
                            state <= DATA;
                        end else state <= IDLE;
                    end else count <= count + 1'b1;
                end
                DATA: begin
                    if (count == CLKS_PER_BIT-1) begin
                        count <= 0;
                        data_shift[bit_index] <= rx_sync;
                        if (bit_index == 7) state <= STOP;
                        else bit_index <= bit_index + 1'b1;
                    end else count <= count + 1'b1;
                end
                STOP: begin
                    if (count == CLKS_PER_BIT-1) begin
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
                WAIT_HIGH: if (rx_sync) state <= IDLE;
                default: state <= IDLE;
            endcase
        end
    end
endmodule
