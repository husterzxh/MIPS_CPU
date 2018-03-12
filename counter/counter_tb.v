`timescale 1ns / 1ps

module counter_tb();

reg [7:0] data;
reg clear;
reg load;
reg count;
reg clk;
wire [7:0] out;
wire carry;

initial begin
	clk = 1'b0;
	forever #1 clk = ~clk;
end

initial begin
	data = 8'b11110000;
	clear = 1'b0;
	load = 1'b1;
	count = 1'b1;
	#10 load = 1'b0;
	#90 clear = 1'b1;
end

counter #(.DATA_BITS(8),.MAX_VALUE(8'b11111111)) my_c(
	.data(data),
	.clear(clear),
	.load(load),
	.count(count),
	.clk(clk),
	.out(out),
	.carry(carry));

endmodule