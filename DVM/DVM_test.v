`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/13 08:58:29
// Design Name: 
// Module Name: DVM_test
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

module DVM_test(

	);
	reg clk;
	wire [32:1] myclk;
	reg hz;
	reg clk1;
	reg [32:1] count;

	
	DVM u1(clk, myclk);
	initial begin
		clk = 0;
		count = 0;
	end
	always begin
		#1 clk = ~clk;
	end
	always @(clk) begin
	   if(hz)
	       clk1 <= myclk[2];
	   else
	       clk1 <= clk;
	end
	always@(posedge clk1) begin
		count = count + 1;
		if(count == 32)
		  hz <= 1;
	end
	

endmodule