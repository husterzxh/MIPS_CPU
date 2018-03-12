`timescale 1ns/1ps
module test1();
//inputs
reg [4:0] data5;
reg [15:0] positive_data16;
reg [15:0] negative_data16;
//outputs
wire [31:0] data_5to32;
wire [31:0] data_16to32_ps;
wire [31:0] data_16to32_ng;


initial
begin
data5=10;
positive_data16=37;
negative_data16=-37;
#10 data5=5;
#10 data5= -7;
#10 negative_data16=-77;
end

Zero_Ext_5to32 ext5to32(
    .data_5bit(data5),
    .data_32bit(data_5to32)
);

Sign_Ext_16to32 ext16to32p(
    .data_16bit(positive_data16),
    .data_32bit(data_16to32_ps)
);

Sign_Ext_16to32 ext16to32n(
    .data_16bit(negative_data16),
    .data_32bit(data_16to32_ng)
);
endmodule