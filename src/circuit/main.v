/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( CLK,
             O_0,
             O_1,
             O_2,
             O_3,
             RST );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input CLK;
   input RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output O_0;
   output O_1;
   output O_2;
   output O_3;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;
   wire s_logisimNet8;
   wire s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet2 = CLK;
   assign s_logisimNet4 = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign O_0 = s_logisimNet1;
   assign O_1 = s_logisimNet5;
   assign O_2 = s_logisimNet6;
   assign O_3 = s_logisimNet3;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Buffer
   assign s_logisimNet7 = s_logisimNet1;

   // Buffer
   assign s_logisimNet8 = s_logisimNet5;

   // Buffer
   assign s_logisimNet9 = s_logisimNet6;

   // Buffer
   assign s_logisimNet0 = s_logisimNet3;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_1 (.clock(s_logisimNet2),
                .d(s_logisimNet0),
                .preset(s_logisimNet4),
                .q(s_logisimNet1),
                .qBar(),
                .reset(1'b0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_2 (.clock(s_logisimNet2),
                .d(s_logisimNet7),
                .preset(1'b0),
                .q(s_logisimNet5),
                .qBar(),
                .reset(s_logisimNet4),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_3 (.clock(s_logisimNet2),
                .d(s_logisimNet8),
                .preset(1'b0),
                .q(s_logisimNet6),
                .qBar(),
                .reset(s_logisimNet4),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_4 (.clock(s_logisimNet2),
                .d(s_logisimNet9),
                .preset(1'b0),
                .q(s_logisimNet3),
                .qBar(),
                .reset(s_logisimNet4),
                .tick(1'b1));


endmodule
