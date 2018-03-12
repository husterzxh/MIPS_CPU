`timescale 1ns / 1ps

// 
module SEL_BITS_1_MUX
#(	// DATA_BITS为输入的位宽
	parameter DATA_BITS = 2
	parameter SEL_BITS = 2
)
(
	input [DATA_BITS-1:0] d0, d1,
	input [SEL_BITS-1:0] sel,
	output [DATA_BITS-1:0] out
);


assign  = ;