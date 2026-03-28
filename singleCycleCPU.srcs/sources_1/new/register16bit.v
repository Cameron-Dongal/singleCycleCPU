`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 11:14:32 PM
// Design Name: 
// Module Name: register16bit
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


module register16bit(
    input [15:0] in,
    input load,
    input clk,
    output [15:0] out
    );
    
    register reg0 ( .in(in[0 ]), .load(load), .clk(clk), .out(out[0 ]));
    register reg1 ( .in(in[1 ]), .load(load), .clk(clk), .out(out[1 ]));
    register reg2 ( .in(in[2 ]), .load(load), .clk(clk), .out(out[2 ]));
    register reg3 ( .in(in[3 ]), .load(load), .clk(clk), .out(out[3 ]));
    register reg4 ( .in(in[4 ]), .load(load), .clk(clk), .out(out[4 ]));
    register reg5 ( .in(in[5 ]), .load(load), .clk(clk), .out(out[5 ]));
    register reg6 ( .in(in[6 ]), .load(load), .clk(clk), .out(out[6 ]));
    register reg7 ( .in(in[7 ]), .load(load), .clk(clk), .out(out[7 ]));
    register reg8 ( .in(in[8 ]), .load(load), .clk(clk), .out(out[8 ]));
    register reg9 ( .in(in[9 ]), .load(load), .clk(clk), .out(out[9 ]));
    register reg10( .in(in[10]), .load(load), .clk(clk), .out(out[10]));
    register reg11( .in(in[11]), .load(load), .clk(clk), .out(out[11]));
    register reg12( .in(in[12]), .load(load), .clk(clk), .out(out[12]));
    register reg13( .in(in[13]), .load(load), .clk(clk), .out(out[13]));
    register reg14( .in(in[14]), .load(load), .clk(clk), .out(out[14]));
    register reg15( .in(in[15]), .load(load), .clk(clk), .out(out[15]));

endmodule
