`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/12 19:14:29
// Design Name: 
// Module Name: ALU_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_tb();
reg clock;
reg [31:0]X, Y;
reg [3:0] ALU_OP; 
wire [31:0]Result, Result2; 
wire OF, UOF, Equal;

initial 
    begin
        clock = 0;
        X = 0; Y = 0; ALU_OP = 0;
        //test 0000 <<
        #40 X = 35; Y = 12; ALU_OP = 4'b0000;    //short Y
        #40 X = 13; Y = 264197; ALU_OP = 4'b0000;  //long Y
        //test 0001 >>>
        #40 X = 2150375463; Y = 5; ALU_OP = 4'b0001;  //fullfill 1, short Y
        #40 X = 13; Y = 65539; ALU_OP = 4'b0001;  //fullfill 0, long Y
        //test 0010 >>
        #40 X = 1271; Y = 11; ALU_OP = 4'b0010;  //short Y
        #40 X = 3358; Y = 265221; ALU_OP = 4'b0010;  //long Y
        //test 0011 *
        #40 X = 24; Y = 453; ALU_OP = 4'b0011;  //short * short
        #40 X = 2685149223; Y = 1074007045; ALU_OP = 4'b0011;  //long * long
        //test 0100 /
        #40 X = 39; Y = 13; ALU_OP = 4'b0100;  //mod = 0
        #40 X = 677; Y = 12; ALU_OP = 4'b0100;  //mod != 0
        #40 X = 2685149223; Y = 265221; ALU_OP = 4'b0100;  //long / long
        //test 0101 +
        #40 X = 123345; Y = 645539; ALU_OP = 4'b0101; // OF=0, UOF=0 
        #40 X = 3224109733; Y = 3759153164; ALU_OP = 4'b0101;    // OF=0, UOF=1
        #40 X = 1613496997; Y = 1343234060; ALU_OP = 4'b0101;    // OF=1, UOF=0
        #40 X = 2150367909; Y = 2685411340; ALU_OP = 4'b0101;    // OF=1, UOF=1
        //test 0110 -
        #40 X = 45634; Y = 11232; ALU_OP = 4'b0110;  // OF=0, UOF=0 
        #40 X = 1781269157; Y = 1879050243; ALU_OP = 4'b0110;  // OF=0, UOF=1  
        #40 X = 2147483648; Y = 1879050244; ALU_OP = 4'b0110;  // OF=1, UOF=0  
        #40 X = 1256981157; Y = 3376228292; ALU_OP = 4'b0110;  // OF=1, UOF=1  
        //test 0111 &
        #40 X = 618; Y = 8284; ALU_OP = 4'b0111;
        //test 1000 |
        #40 X = 2634; Y = 172; ALU_OP = 4'b1000;
        //test 1001 nor
        #40 X = 2642; Y = 1204; ALU_OP = 4'b1001;
        //test 1010 ~(|)
        #40 X = 618; Y = 172; ALU_OP = 4'b1010;
        //test 1011 signed compare
        #40 X = 12313; Y = 23345; ALU_OP = 4'b1011;
        #40 X = 1256981157; Y = 2147484852; ALU_OP = 4'b1011;
        #40 Y = 12313; X = 23345; ALU_OP = 4'b1011;
        #40 Y = 1256981157; X = 2147484852; ALU_OP = 4'b1011;
        //test 1100 unsigned compare
        #40 X = 12313; Y = 23345; ALU_OP = 4'b1100;
        #40 X = 1256981157; Y = 2147484852; ALU_OP = 4'b1100;
        #40 Y = 12313; X = 23345; ALU_OP = 4'b1100;
        #40 Y = 1256981157; X = 2147484852; ALU_OP = 4'b1100;
    end
    //module RISC_ALU( clock, X, Y, ALU_OP, Result, Result2, OF, UOF, Equal);
    always #20 clock = ~clock;
    RISC_ALU test_ALU( clock, X, Y, ALU_OP, Result, Result2, OF, UOF, Equal);
endmodule
