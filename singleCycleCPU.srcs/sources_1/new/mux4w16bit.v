`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 08:42:12 PM
// Design Name: 
// Module Name: mux4w16bit
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


module mux4w16bit(
    input [15:0] in1,
    input [15:0] in2,
    input [15:0] in3,
    input [15:0] in4,
    input [1:0] sel,
    output [15:0] out
    );
    wire [15:0] mux12out;
    mux16bit mux12(
        .in1(in1),
        .in2(in2),
        .sel(sel[0]),
        .out(mux12out)
    );
    
    wire [15:0] mux34out; 
    mux16bit mux34(
        .in1(in3),
        .in2(in4),
        .sel(sel[0]),
        .out(mux34out)
    );  
    
    wire [15:0] fin;
    mux16bit mux1234(
        .in1(mux12out),
        .in2(mux34out),
        .sel(sel[1]),
        .out(fin)
    );
    
    assign out = fin;
endmodule
