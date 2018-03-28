`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:04 02/06/2018 
// Design Name: 
// Module Name:    SumNumbers 
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
module SumNumbers(
             input [3:0] N,
				 input clk,
				 output reg [6:0]rout,
				 output reg [6:0]temp
				
    );
	  
		  wire [3:0]out_;
		  
		  wire [6:0]rout_;
		  assign rout_=rout;
		  
		  wire cin_;
		  assign cin_=temp;
		  
		  wire [6:0]routwire;
		  reg temp2;
		  reg cout_;

	 DownCounter dn(clk, N, out_);
	 FA fa1(out_,rout_,cin_,routwire,cout_);
	 
	 
	 initial begin
	           temp=0;
				  rout=0;
				  
			   end
	 
	 always @(negedge clk) begin
                              temp=cout_;	                        
									   rout=routwire;
							
	                       end
	 
	 endmodule




