module display(         //子模块，显示模块
input clk,
input clr,
input [31:0] data32,
output [7:0] seg,
output [7:0] AN
);

reg [3:0] data;
reg [2:0] bit_sel;

initial
begin
data=4'd0;
bit_sel=0;
end

seg7 xianshi(
.bit_sel(bit_sel),
.data(data),
.AN(AN),
.seg(seg)
);

always @(posedge clk, posedge clr)
if(clr)
  begin
  bit_sel<=3'b0;
  end
else
begin
    if(bit_sel<7)
    bit_sel <= bit_sel + 1'b1;	//换一位数码管显示
    else
    bit_sel <= 0;
end

always @(posedge clk, posedge clr)	//控制每个数码管显示对应位的数字
if(clr)
  begin
  data<=0;
  end
else
begin
case(bit_sel)
0:  data <= data40[3:0];
1:  data <= data40[7:4];
2:  data <= data40[11:8];
3:	data <= data40[15:12];
4:	data <= data40[19:16];
5:	data <= data40[23:20];
6:	data <= data40[27:24];
7:  data <= data40[31:28];
endcase
end

endmodule



module seg7(
output reg [7:0] seg,
output reg [7:0] AN,
input wire [2:0] bit_sel,  //控制第几位显示
input wire [3:0] data      //显示的内容
);

initial AN=8'b11111111;
initial seg[7:0]<=8'b11111111;

always @(*)
begin
case (bit_sel)
4'd0: AN<=8'b01111111;
4'd7: AN<=8'b10111111;
4'd6: AN<=8'b11011111;
4'd5: AN<=8'b11101111;
4'd4: AN<=8'b11110111;
4'd3: AN<=8'b11111011;
4'd2: AN<=8'b11111101;
4'd1: AN<=8'b11111110;
endcase
end

always @(*)
begin
case (data[3:0])
0:seg[7:0]<=8'b00000011;
1:seg[7:0]<=8'b10011111;
2:seg[7:0]<=8'b00100101;
3:seg[7:0]<=8'b00001101;
4:seg[7:0]<=8'b10011001;
5:seg[7:0]<=8'b01001001;
6:seg[7:0]<=8'b01000001;
7:seg[7:0]<=8'b00011111;
8:seg[7:0]<=8'b00000001;
9:seg[7:0]<=8'b00001001;
A:seg[7:0]<=8'b00010001;
B:seg[7:0]<=8'b11000001;
C:seg[7:0]<=8'b01100011;
D:seg[7:0]<=8'b10000101;
E:seg[7:0]<=8'b01100001;
F:seg[7:0]<=8'b01110001;
default:seg[7:0]<=8'b00000011;
endcase
end
endmodule

