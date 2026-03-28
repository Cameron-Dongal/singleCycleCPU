`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 08:56:39 PM
// Design Name: 
// Module Name: demux4w
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
module demux4w(
    input in,
    input [1:0] sel,
    output out1,
    output out2,
    output out3,
    output out4
    );
    
    wire dm1out1;
    wire dm1out2;
    wire dm2out1;
    wire dm2out2;
    wire dm3out1;
    wire dm3out2;
    
    demux dm1(
        .in(in),
        .sel(sel[0]),
        .out1(dm1out1),
        .out2(dm1out2)
    );
    
    demux dm2(
        .in(dm1out1),
        .sel(sel[1]),
        .out1(dm2out1),
        .out2(dm2out2)
    );
    
    demux3 dm3(
        .in(dm1out2),
        .sel(sel[1]),
        .out1(dm3out1),
        .out2(dm3out2)
    );
    
    assign out1 = dm2out1;
    assign out2 = dm2out2;
    assign out3 = dm3out1;
    assign out4 = dm3out2;
    
    
    
    
    
endmodule
