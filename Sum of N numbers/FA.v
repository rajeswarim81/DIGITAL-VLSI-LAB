`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:39 02/06/2018 
// Design Name: 
// Module Name:    FA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FA(
            input [3:0]x,
				input [6:0]y,
				input cin,
				output reg [6:0]s,
				output reg cout
    );
	 
	 always @(x, y,  cin)begin
	                       {cout, s}= x+y+cin;
	                     end


endmodule
