`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 09:26:25 PM
// Design Name: 
// Module Name: add16bit
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


module add16bit(
    input [15:0] in1,
    input [15:0] in2,
    input cin,
    output [15:0] sum,
    output cout
    );
    wire cout0, cout1, cout2;
    add4bit add0( .in1(in1[3:0]),    .in2(in2[3:0]),    .cin(cin),   .sum(sum[3:0]),    .cout(cout0));
    add4bit add1( .in1(in1[7:4]),    .in2(in2[7:4]),    .cin(cout0), .sum(sum[7:4]),    .cout(cout1));
    add4bit add2( .in1(in1[11:8]),   .in2(in2[11:8]),   .cin(cout1), .sum(sum[11:8]),   .cout(cout2));
    add4bit add3( .in1(in1[15:12]),  .in2(in2[15:12]),  .cin(cout2), .sum(sum[15:12]),  .cout(cout));
    
endmodule
