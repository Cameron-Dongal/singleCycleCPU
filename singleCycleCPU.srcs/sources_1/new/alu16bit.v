`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 10:24:07 PM
// Design Name: 
// Module Name: alu16bit
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


module alu16bit(
    input [15:0] in1,
    input [15:0] in2,
    input [3:0] opcode,
    output [15:0] out,
    output zero,
    output neg
    );
    
    wire [15:0] a; 
    mux16bit muxin1( .in1(in1), .in2(~in1), .sel(opcode[3]), .out(a));
    
    wire [15:0] b;
    mux16bit muxin2( .in1(in2), .in2(~in2), .sel(opcode[2]), .out(b));
    
    wire [15:0] sum;
    add16bit adder( .in1(a), .in2(b), .sum(sum));
    wire [15:0] nand15 = ~(a & b);
    
    wire [15:0] c;
    mux16bit add_or_nand( .in1(sum), .in2(nand15), .sel(opcode[1]), .out(c));
    
    wire [15:0] fin;
    mux16bit invert_fin( .in1(c), .in2(~c), .sel(opcode[0]), .out(fin));
    
    assign zero = ~|fin;
    assign neg = fin[3];
    
endmodule
