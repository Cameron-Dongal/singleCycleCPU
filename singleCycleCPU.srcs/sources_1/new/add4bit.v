`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 09:19:05 PM
// Design Name: 
// Module Name: add4bit
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


module add4bit(
    input [3:0] in1,
    input [3:0] in2,
    output [3:0] out,
    output cout,
    input cin
    );
    wire cout0, cout1, cout2;
    
    fa fa0( .in1(in1[0]), .in2(in2[0]), .cin(cin), .cout(cout0), .sum(out[0]));
    fa fa1( .in1(in1[1]), .in2(in2[1]), .cin(cout0), .cout(cout1), .sum(out[1]));
    fa fa2( .in1(in1[2]), .in2(in2[2]), .cin(cout1), .cout(cout2), .sum(out[2]));
    fa fa3( .in1(in1[3]), .in2(in2[3]), .cin(cout2), .cout(cout), .sum(out[3]));

endmodule
