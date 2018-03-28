`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:22 01/23/2018 
// Design Name: 
// Module Name:    priority_encoder 
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
module priority_encoder(
              output reg [1:0]y,
				  output reg v,
				  input [3:0]d
    );
	  always@(d) begin
	           if(d[3] == 1)
				     begin
					    y=2'b11;
					  end
					  
					  else if(d[2] ==1)
					       begin
							   y=2'b10;
							 end
							 
							 else if(d[1]==1)
							      begin
                             y=2'b01;									
									end
									
									else if(d[0]==1)
									     begin
										     y=2'b00;
										  end
										  
										  v= d[0] | d[1] | d[2] | d[3];
	          end
	


endmodule
