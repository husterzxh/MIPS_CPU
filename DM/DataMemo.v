`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/12 16:32:16
// Design Name: 
// Module Name: DataMemo
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


module DataMemo(
    input [12:1] addr,
    input [32:1] Din,
    input WE,
    input clk,
    input [2:1] mode,
    output [32:1] DataOut
    );
    reg [8:1] mem1[1024:1], mem2[1024:1], mem3[1024:1], mem4[1024:1];
    reg [32:1] DataOut;
    always@(posedge clk)
    begin
        if(WE) begin        //write in DM
            case(mode)
                2'b00:begin
                    mem1[addr[12:3]] = Din[8:1];
                    mem2[addr[12:3]] = Din[16:9];
                    mem3[addr[12:3]] = Din[24:17];
                    mem4[addr[12:3]] = Din[32:25];
                end
                2'b01:begin
                    case(addr[2:1])
                        2'b00: begin
                            mem1[addr[12:3]] = Din[8:1];
                            mem2[addr[12:3]] = 0;
                            mem3[addr[12:3]] = 0;
                            mem4[addr[12:3]] = 0;
                        end
                        2'b01: begin
                            mem1[addr[12:3]] = 0;
                            mem2[addr[12:3]] = Din[8:1];
                            mem3[addr[12:3]] = 0;
                            mem4[addr[12:3]] = 0;
                        end
                        2'b10: begin
                            mem1[addr[12:3]] = 0;
                            mem2[addr[12:3]] = 0;
                            mem3[addr[12:3]] = Din[8:1];
                            mem4[addr[12:3]] = 0;
                        end
                        2'b11: begin
                            mem1[addr[12:3]] = 0;
                            mem2[addr[12:3]] = 0;
                            mem3[addr[12:3]] = 0;
                            mem4[addr[12:3]] = Din[8:1];
                        end
                     endcase                
                end
                2'b10:begin
                    if(addr[2])
                        begin
                            mem1[addr[12:3]] = 0;
                            mem2[addr[12:3]] = 0;
                            mem3[addr[12:3]] = Din[8:1];
                            mem4[addr[12:3]] = Din[16:9];
                        end
                    else
                        begin
                            mem1[addr[12:3]] = Din[8:1];
                            mem2[addr[12:3]] = Din[16:9];
                            mem3[addr[12:3]] = 0;
                            mem4[addr[12:3]] = 0;
                        end
                end
                default:begin
                
                end
            endcase
        end
        else begin              //read DM
            case(mode)
                2'b00:begin
                    DataOut[8:1] = mem1[addr[12:3]];
                    DataOut[16:9] = mem2[addr[12:3]];
                    DataOut[24:17] = mem3[addr[12:3]];
                    DataOut[32:25] = mem4[addr[12:3]];
                end
                2'b01:begin
                    case(addr[2:1])
                        2'b00: begin
                            DataOut[8:1] = mem1[addr[12:3]];
                        end
                        2'b01: begin
                            DataOut[8:1] = mem2[addr[12:3]];
                        end
                        2'b10: begin
                            DataOut[8:1] = mem3[addr[12:3]];
                        end
                        2'b11: begin
                            DataOut[8:1] = mem4[addr[12:3]];
                        end
                    endcase
                    DataOut[32:9] = 7'h0000000;                
                end
                2'b10:begin
                    if(addr[2])
                    begin
                        DataOut[8:1] = mem3[addr[12:3]];
                        DataOut[16:9] = mem4[addr[12:3]];
                    end
                    else
                    begin
                        DataOut[8:1] = mem1[addr[12:3]];
                        DataOut[16:9] = mem2[addr[12:3]];
                    end
                    DataOut[32:17] = 4'h0000;
                end
                default:begin
                    mem1[addr[12:3]] = 0;
                    mem2[addr[12:3]] = 0;
                    mem3[addr[12:3]] = 0;
                    mem4[addr[12:3]] = 0;
                end
            endcase
        end
    end
endmodule
