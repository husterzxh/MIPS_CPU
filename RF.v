module RegisterFile(clk, we, w, rw, ra, rb, a, b);
	// input:
	input clk;          // 时钟
	input we;           // 写使能
	input [31:0]w;      // 要写入寄存器的数据
	input [4:0]rw;      // 要写入的地址
	input [4:0]ra;      // 要读取的地址
	input [4:0]rb;      // 要读取的地址
	output [31:0]a;     // 要读出的数据
	output [31:0]b;     // 要读出的数据

	reg [31:0]data[31:0];    // 寄存器中存放的数据
	reg [31:0]a;    // 读出的数据a
	reg [31:0]b;    // 读出的数据b

	always @(posedge clk) begin
		if (we == 1'b1)    // 向寄存器写数据
		begin
			data[rw] = w;
		end
		a = data[ra];    // 读出数据a
		b = data[rb];    // 读出数据b
	end

endmodule