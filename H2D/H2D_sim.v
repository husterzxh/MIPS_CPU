`timescale 1ns/1ps
module test1();
//inputs
reg [15:0] Hex;
//outputs
wire [15:0] Dex;

initial
begin
Hex=123;
#100 Hex=9999;
#100 Hex=12345;
#100 Hex=0;
#100 Hex=3579;
#100 Hex=257;
#100 Hex=30;
#100 Hex=2000;
#100 Hex=9;
end

H2D sim(
    .Hex(Hex),
    .Dex(Dex)
);

endmodule