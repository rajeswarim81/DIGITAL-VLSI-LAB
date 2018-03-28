`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:25:58 01/23/2018 
// Design Name: 
// Module Name:    sr 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: +5+
//
//////////////////////////////////////////////////////////////////////////////////
module sr(
          input din,
			 input l,
			 input clk,
			 input reset,
			 output reg dout
    );
	 
	// reg dout;
	 wire din, clk, reset;
	 reg [3:0]s;
	 
	 always@(posedge clk or negedge clk)
	   begin
		   if(~reset)
			  begin
			    if(~l)
				   begin
					  s[0] <=din;
					  s[1] <=s[0];
					  s[2] <=s[1];
					  s[3] <=s[2];
					  dout <=s[2];
					end
					
					else
					  begin
					    s[3] <=din;
						 s[2] <=s[3];
						 s[1] <=s[2];
						 s[0] <=s[1];
						 dout <=s[0];
					  end
			  end
			
			else
			  dout <=1'b0;
		end
	 


endmodule
