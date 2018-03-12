`timescale 1ns / 1ps

module sel_bits_1_mux_tb();

reg [7:0] d0, d1;
reg sel;
wire [7:0] out;

initial begin
	d0 = 8'b00000000;
	d1 = 8'b11111111;
	sel = 1'b1;
	forever #10 sel = ~sel;
end

sel_bits_1_mux #(.DATA_BITS(8)) my_tb(.d0(d0), .d1(d1), .sel(sel), .out(out));

endmodule