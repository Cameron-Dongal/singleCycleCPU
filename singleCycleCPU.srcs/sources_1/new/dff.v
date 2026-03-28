`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 10:56:27 PM
// Design Name: 
// Module Name: dff
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


module dff (
    input D,     
    input clk, //basys3 100MHz
    input reset,    
    output reg Q 
);

  
    always @(posedge clk, posedge reset) begin
        if (reset)
            Q <= 1'b0;      
        else
            Q <= D;         
    end

endmodule
