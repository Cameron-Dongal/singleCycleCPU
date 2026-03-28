`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 10:54:35 PM
// Design Name: 
// Module Name: register
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


module register(
    input in,
    input load,
    input clk,
    output out
    );
    
    wire dffout;
    wire muxout;
    mux mux1(
        .in1(dffout),
        .in2(in),
        .sel(load),
        .out(muxout)
    );
    
    dff dff1(
        .D(muxout),
        .clk(clk),
        .Q(dffout)
    );
    
    assign out = dffout;

endmodule
