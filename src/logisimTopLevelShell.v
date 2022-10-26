/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : logisim_demo                                         **
 **                                                                          **
 *****************************************************************************/
`default_nettype none
module logisim_demo(
  input [7:0] io_in,
  output [7:0] io_out
);
   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_CLK = io_in[0];
   wire s_O_0;
   wire s_O_1;
   wire s_O_2;
   wire s_O_3;
   assign io_out[0] = s_O_0;
   assign io_out[1] = s_O_1;
   assign io_out[2] = s_O_2;
   assign io_out[3] = s_O_3;
   wire s_RST = io_in[1];

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
  main   CIRCUIT_0 (.CLK(s_CLK),
                     .O_0(s_O_0),
                     .O_1(s_O_1),
                     .O_2(s_O_2),
                     .O_3(s_O_3),
                     .RST(s_RST));
      assign io_out[7:4] = 0;
endmodule
