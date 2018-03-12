`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/12 15:38:15
// Design Name: 
// Module Name: IM
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


module IM(
    input [12:1] address,
    output [32:1] im_now
    );
    reg[32:1] im_mem[1024:1];
    
    initial $readmemh("C:/Users/123/Desktop/组原课程设计/MIPSCPU/IM.hex", im_mem);
    assign im_now = im_mem[address[12:3]];
endmodule
