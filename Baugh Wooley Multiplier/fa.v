`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:08 01/09/2018 
// Design Name: 
// Module Name:    fa 
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
module fa(
    input x1,
    input x2,
    input cin,
    output cout,
    output s
    );
wire a,b,c;
xor p1(b,x1,x2);
and a1(a,x1,x2);
xor p2(s,b,cin);
and a2(c,cin,b);
or o1(cout,a,c);

endmodule
