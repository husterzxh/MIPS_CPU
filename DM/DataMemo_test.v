`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/12 18:56:50
// Design Name: 
// Module Name: DataMemo_test
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


module DataMemo_test(

    );
    reg clk;
    reg [12:1] addr;
    reg [32:1] Din;
    reg WE;
    reg [2:1] mode;
    wire [32:1] DataOut;
    reg [6:1] count;
    
    DataMemo t1(addr, Din, WE, clk, mode, DataOut);
    initial begin
        addr = 0;
        Din = 0;
        WE = 0;
        mode = 0;
        RST = 1;
        clk = 0;
        count = 0;
        forever 
            #1 clk = ~clk;
    end
    always@(posedge clk) begin
        count = count + 1;
        if(count < 20) begin
            addr = addr + 4;
            mode = 2'b01;
            WE = 1;
            Din = Din + 8'hffffffff;
        end
        else if(count < 40) begin
            addr = addr - 4;
            mode = 2'b00;
            WE = 0;
        end
    end
   
endmodule
