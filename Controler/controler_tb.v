`timescale 1ns / 1ps

module controler_tb();

	reg [5:0]func;    // function [5:0]
	reg [5:0]operator;    // operator [31:25]
	
	wire [3:0]aluop;    
	wire ext_16;        
	wire ext_s;         
	wire ext_5;         
	wire regwrite;      
	wire lw;            
	wire jal;           
	wire syscall;       
	wire sw;            

	controler t1(func, operator, aluop, ext_16, ext_s, ext_5, regwrite, lw, jal, syscall, sw);

	initial begin
		func = 6'h00;
		operator = 6'h00;
	end

	always  begin
		//#30 func = func+1;
		#40 operator = operator + 1;
	end

endmodule