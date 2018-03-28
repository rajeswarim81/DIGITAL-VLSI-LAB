`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:03 01/29/2018 
// Design Name: 
// Module Name:    two_xor_fa 
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
module two_xor_fa(input A,B,C,D,T,cin,
    output cout ,sum
    );
wire and1,and2,xor1,xor2;
assign and1 = A&B;
assign and2 = C&D;
assign xor1 = and1 ^ T;
assign xor2 = and2 ^ T;
assign sum = xor2^xor1^cin;
assign cout = (xor2 & xor1 ) | (xor2 & cin ) | (xor1 & cin);

endmodule
