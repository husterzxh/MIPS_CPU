`timescale 1ns / 1ps

module NPC_tb();

reg rst, clk;
reg [31:0] IM, OFFSET, PC, RegRT, RegRS;
wire [31:0]NextPC;
wire [15:0]unconditional;
wire [15:0]conditional;
wire [15:0]conditionalsucces;

initial begin
	clk = 0;
	forever #1 clk = ~clk;
end

initial begin
	rst = 0;
	IM = 32'h00000000;
	OFFSET = 32'h00000000;
	PC = 32'h00000000;
	RegRT = 32'h00000000;
	RegRS = 32'h00000000;
	#10 // J 指令模拟测试
	IM = 32'b00001000000010000100001000010000;
	#10 // JR 指令测试
	IM = 32'b00000000000000000000000000001000;
	RegRS = 32'hffffffff;
	#10 // BNE 指令测试
	IM = 32'b00010100000000000000000000000000;
	OFFSET = 32'h0000fffe;
	#10 // BEQ 指令测试
	IM = 32'b00010000000000000000000000000000;
	RegRT = 32'hffffffff;
	OFFSET = 32'h0000ffff;
	#10 // syscall测试
	IM = 32'b00000000000000000000000000001100;
	RegRS =  32'ha;
	#10
	rst = 1;
end

NPC my_NPC
(
	.rst(rst),
	.clk(clk),
	.IM(IM),
	.OFFSET(OFFSET),
	.PC(PC),
	.RegRT(RegRT),
	.RegRS(RegRS),
	.NextPC(NextPC),
	.unconditional(unconditional),
	.conditional(conditional),
	.conditionalsucces(conditionalsucces)
);

endmodule