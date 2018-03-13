# 功能： 控制器
# 调用 :
module controler(func, operator, aluop, ext_16, ext_s, ext_5, regwrite, lw, jal, syscall, sw);


    input [5:0]func;    // function [5:0] 
	
    input [5:0]operator;    // operator [31:25]

	output [3:0]aluop;   // alu_op 
	output ext_16;        
	output ext_s;         
	output ext_5;         
	output regwrite;      
	output lw;            
	output jal;           
	output syscall;       
	output sw;   


  
