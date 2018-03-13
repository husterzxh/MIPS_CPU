`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/12 17:24:24
// Design Name: 
// Module Name: IM_test
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


module IM_test(

    );
    reg [12:1] addr;
    wire [32:1] im_now;
    reg clk;
    
    IM t1(addr, im_now);
    initial begin
        addr = 0;
    end
    initial begin
       clk = 0;
       forever
         #3 clk = ~clk;
    end
    always @(posedge clk)
        begin
            addr = addr+4;
        end
    
endmodule
