`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/12 18:52:13
// Design Name: 
// Module Name: RegisterFile_tb
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


module RegisterFile_tb();
reg clk_t;          // 时钟
reg we_t;           // 写使�?
reg [31:0]w_t;      // 要写入寄存器的数�?
reg [4:0]rw_t;      // 要写入的地址
reg [4:0]ra_t;      // 要读取的地址
reg [4:0]rb_t;      // 要读取的地址
wire [31:0]a_t;      // 要读出的数据
wire [31:0]b_t;      // 要读出的数据

RegisterFile t1(.clk(clk_t),
				.we(we_t),
				.w(w_t),
				.rw(rw_t),
				.ra(ra_t),
				.rb(rb_t),
				.a(a_t),
				.b(b_t));

initial
begin
	clk_t = 0;
	we_t = 0;
	w_t = 32'b11111111_11111111_11111111_11111111;
	rw_t = 5'b00000;
	ra_t = 5'b00000;
	rb_t = 5'b00001;

	forever
	#1 clk_t = ~clk_t;
end

always @(posedge clk_t) begin
	#2 we_t = ~we_t;
	#1 w_t = w_t + 1; rw_t = rw_t + 1;
	#2 ra_t = ra_t + 2; rb_t = rb_t + 2;
end


endmodule
