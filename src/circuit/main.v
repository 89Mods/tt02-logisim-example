/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( A,
             B,
             C,
             CLK,
             D,
             DP,
             E,
             F,
             G,
             RST );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input CLK;
   input RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output A;
   output B;
   output C;
   output D;
   output DP;
   output E;
   output F;
   output G;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet10;
   wire s_logisimNet11;
   wire s_logisimNet12;
   wire s_logisimNet13;
   wire s_logisimNet14;
   wire s_logisimNet15;
   wire s_logisimNet16;
   wire s_logisimNet17;
   wire s_logisimNet18;
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
   assign s_logisimNet1 = RST;
   assign s_logisimNet6 = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign A  = s_logisimNet17;
   assign B  = s_logisimNet10;
   assign C  = s_logisimNet18;
   assign D  = s_logisimNet11;
   assign DP = s_logisimNet14;
   assign E  = s_logisimNet15;
   assign F  = s_logisimNet9;
   assign G  = s_logisimNet16;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Buffer
   assign s_logisimNet3 = s_logisimNet7;

   // Buffer
   assign s_logisimNet4 = s_logisimNet2;

   // Buffer
   assign s_logisimNet12 = s_logisimNet5;

   // Buffer
   assign s_logisimNet13 = s_logisimNet0;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_1 (.clock(s_logisimNet6),
                .d(s_logisimNet4),
                .preset(1'b0),
                .q(s_logisimNet5),
                .qBar(),
                .reset(s_logisimNet1),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_2 (.clock(s_logisimNet6),
                .d(s_logisimNet3),
                .preset(1'b0),
                .q(s_logisimNet2),
                .qBar(),
                .reset(s_logisimNet1),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_3 (.clock(s_logisimNet6),
                .d(s_logisimNet13),
                .preset(s_logisimNet1),
                .q(s_logisimNet7),
                .qBar(),
                .reset(1'b0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_4 (.clock(s_logisimNet6),
                .d(s_logisimNet12),
                .preset(1'b0),
                .q(s_logisimNet0),
                .qBar(),
                .reset(s_logisimNet1),
                .tick(1'b1));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet2),
               .input2(s_logisimNet0),
               .result(s_logisimNet17));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_6 (.input1(s_logisimNet7),
               .input2(s_logisimNet2),
               .input3(s_logisimNet5),
               .input4(s_logisimNet0),
               .result(s_logisimNet10));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_7 (.input1(s_logisimNet7),
               .input2(s_logisimNet5),
               .input3(s_logisimNet0),
               .result(s_logisimNet18));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet5),
               .input2(s_logisimNet0),
               .result(s_logisimNet9));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_9 (.input1(s_logisimNet2),
               .input2(s_logisimNet5),
               .input3(s_logisimNet0),
               .result(s_logisimNet16));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .result(s_logisimNet11));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .result(s_logisimNet15));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_12 (.clock(s_logisimNet6),
                 .d(s_logisimNet8),
                 .preset(1'b0),
                 .q(s_logisimNet14),
                 .qBar(s_logisimNet8),
                 .reset(s_logisimNet1),
                 .tick(1'b1));


endmodule
