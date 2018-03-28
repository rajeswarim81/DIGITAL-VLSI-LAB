`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:30 02/12/2018 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(a,b,s
    );
input [3:0]a,b;
output [7:0]s;
wire [47:0]w;

and a1(w[0],a[0],b[0]);
fa f1(w[0],1'b0,1'b0,w[1],s[0]); //
and a2(w[2],a[1],b[0]);
fa f2(w[2],1'b0,1'b0,w[3],w[4]);
and a3(w[5],a[2],b[0]);
fa f3(w[5],1'b0,1'b0,w[6],w[7]);
nand n1(w[8],a[3],b[0]);
fa f4(w[8],1'b0,1'b0,w[9],w[10]);
and a4(w[11],a[0],b[1]);
fa f5(w[11],w[4],w[1],w[12],s[1]); //
and a5(w[13],a[1],b[1]);
fa f6(w[13],w[7],w[3],w[14],w[15]);
and a6(w[16],a[2],b[1]);
fa f7(w[16],w[10],w[6],w[17],w[18]);
nand n2(w[19],a[3],b[1]);
fa f8(w[19],1'b0,w[9],w[20],w[21]);
and a7(w[22],a[0],b[2]);
fa f9(w[22],w[15],w[12],w[23],s[2]); //
and a8(w[24],a[1],b[2]);
fa f10(w[24],w[18],w[14],w[25],w[26]);
and a9(w[27],a[2],b[2]);
fa f11(w[27],w[21],w[17],w[28],w[29]);
nand n3(w[30],a[3],b[2]);
fa f12(w[30],1'b0,w[20],w[31],w[32]);
nand n4(w[33],a[0],b[3]);
fa f13(w[33],w[26],w[23],w[34],s[3]); //
nand n5(w[35],a[1],b[3]);
fa f14(w[35],w[29],w[25],w[36],w[37]);
nand n6(w[38],a[2],b[3]);
fa f15(w[38],w[32],w[28],w[39],w[40]);
and a10(w[41],a[3],b[3]);
fa f16(w[41],1'b0,w[31],w[42],w[43]);
fa f17(1'b1,w[37],w[34],w[44],s[4]);
fa f18(w[40],w[44],w[36],w[45],s[5]);
fa f19(w[43],w[45],w[39],w[46],s[6]);
fa f20(1'b1,w[46],w[42],w[47],s[7]);
endmodule
