`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 09:09:03 PM
// Design Name: 
// Module Name: fa
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


module fa(
    input in1,
    input in2,
    input cin,
    output sum,
    output cout
    );
    
    wire bridge;
    wire c1;
    wire c2;
    ha ha1(
        .in1(in1),
        .in2(in2),
        .out(bridge),
        .c(c1)
    );
    ha ha2(
        .in1(bridge),
        .in2(cin),
        .out(sum),
        .c(c2)
    );
    assign cout = c2 | c1;

endmodule     

