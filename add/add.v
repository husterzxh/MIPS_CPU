`timescale 1ns / 1ps

// 加法器
module add
#(
	parameter DATA_BITS = 32
)
(
	input [DATA_BITS-1:0] a, b,
	input cin,
	output [DATA_BITS-1:0] sum,
	output cout
);

assign {cout, sum} = a + b + cin;

endmodule