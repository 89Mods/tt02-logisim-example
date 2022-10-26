`default_nettype none

module seven_segment_seconds (
  input [7:0] io_in,
  output [7:0] io_out
);
    
    wire clk = io_in[0];
    wire reset = io_in[1];
    wire [6:0] led_out;
    assign io_out[6:0] = led_out;

    // external clock is 16MHz, so need 24 bit counter
    reg [23:0] second_counter;
    reg [3:0] digit;

    `ifdef COCOTB_SIM
        initial begin
            $dumpfile ("seven_segment_seconds.vcd");
            $dumpvars (0, seven_segment_seconds);
            #1;
        end
        localparam MAX_COUNT = 100;
    `else
        localparam MAX_COUNT = 16_000_000;
    `endif


    always @(posedge clk) begin
        // if reset, set counter to 0
        if (reset) begin
            second_counter <= 0;
            digit <= 0;
        end else begin
            // if up to 16e6
            if (second_counter == MAX_COUNT) begin
                // reset
                second_counter <= 0;

                // increment digit
                digit <= digit + 1'b1;

                // only count from 0 to 9
                if (digit == 9)
                    digit <= 0;

            end else
                // increment counter
                second_counter <= second_counter + 1'b1;
        end
    end

    // instantiate segment display
    seg7 seg7(.counter(digit), .segments(led_out));

endmodule
