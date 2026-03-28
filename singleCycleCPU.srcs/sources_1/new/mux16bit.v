`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 08:40:03 PM
// Design Name: 
// Module Name: mux16bit
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


module mux16bit(
    input [15:0] in1,
    input [15:0] in2,
    input sel,
    output [15:0] out
    );
    
    
    wire notsel = ~sel; 
    wire [15:0] gated_a = in1 & {16{notsel}}; 
    wire [15:0] gated_b = in2 & {16{sel}}; 
    assign c = gated_a | gated_b;
    
endmodule
