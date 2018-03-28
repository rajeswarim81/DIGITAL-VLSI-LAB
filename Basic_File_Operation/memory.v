`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:43 01/23/2018 
// Design Name: 
// Module Name:    memory 
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
module memory(
    );
	 
	 reg [7:0] my_memory[0:9];
	 //reg [7:0] mem[0:9];
	 integer fi, fo;
	 integer i;
	 
	 initial begin
	       //   fi=$fopen("inputfile.txt", "r");
				 fo=$fopen("outputfile.txt", "w");
	         
				
				

    $readmemb("inputfile.txt", my_memory);

    for(i=0;i<10;i=i+1) begin
       $fwrite(fo, "%b\n", my_memory[i] >>2);
       end		 
				
			
   // $fclose(fi);
	 $fclose(fo);

end
endmodule
