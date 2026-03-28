`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 08:27:58 PM
// Design Name: 
// Module Name: mux
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


module mux(
    input in1,
    input in2,
    input sel,
    output out
    );
    
    wire notsel = ~sel; 
    wire [3:0] gated_a = a & {4{notsel}}; 
    wire [3:0] gated_b = b & {4{sel}}; 
    assign c = gated_a | gated_b;
    
endmodule
