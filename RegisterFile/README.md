# 功能：寄存器文件（32 * 32）

# 调用： module RegisterFile(clk, we, w, rw, ra, rb, a, b);
	// input:
	input clk;          // 时钟
	input we;           // 写使能
	input [31:0]w;      // 要写入寄存器的数据
	input [4:0]rw;      // 要写入的地址
	input [4:0]ra;      // 要读取的地址
	input [4:0]rb;      // 要读取的地址
  
 	// output
	output [31:0]a;     // 要读出的数据
	output [31:0]b;     // 要读出的数据

