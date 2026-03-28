`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 11:28:33 PM
// Design Name: 
// Module Name: counter16bit
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


module counter16bit(
    input [15:0] in,
    input load,
    input reset,
    input clk,
    output [15:0] out
    );
    
    wire [15:0] sum, ldout, rstout, regout;

    mux16bit rst( .in1(sum), .in2(16'h0000), .sel(reset), .out(rstout));
    
    mux16bit ld( .in1(rstout), .in2(in), .sel(load & ~reset), .out(ldout));
    
    register16bit cntreg(
        .in(ldout),
        .load(1'b1),
        .clk(clk), 
        .out(regout)
    );
    
    add16bit cntadd(
        .in1(regout),
        .in2(16'h0001),
        .sum(sum)
    );
    
    assign out = regout;

endmodule
