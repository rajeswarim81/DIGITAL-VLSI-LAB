`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:52 01/29/2018 
// Design Name: 
// Module Name:    two_and_t_Fa_s 
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
module two_and_t_Fa_s(input A,B,s,T,cin,
    output cout ,sum
    );
wire and1,and2,xor1;
assign and1 = A&B;
assign xor1 = and1 ^ T;
assign sum = s^xor1^cin;
assign cout = (s & xor1 ) | (s & cin ) | (xor1 & cin);

endmodule