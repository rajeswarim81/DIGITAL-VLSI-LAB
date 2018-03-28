`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:58:10 02/06/2018 
// Design Name: 
// Module Name:    DownCounter 
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
module DownCounter(
              input clk,
              input [3:0] N,
				  output reg[3:0] out
    );
	 
	 reg [3:0] temp;
	 integer flag=1;
	 
	  initial begin
	       out=0;
		  end
	        
    always @(negedge clk) begin
	                         if(out==0 && flag==1) begin
									              out=N;
													  flag=0;
									            end
													
													 if( out==0)
													       out=0;
													
													else begin
													     temp=out-1'b1;
													     out=temp;
                                       end													
		  
								  end		
endmodule

