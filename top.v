`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:00 01/31/2019 
// Design Name: 
// Module Name:    top 
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
module top(input [2:0] sel1,input[2:0] sel2,
           input enable,reset,
          output m1out,m2out,
          output [7:0]count , output [7:0]count_1, 
			 output [7:0] count_2
          );
  //  wire w1, w2, w3, w4, w5, w6, w7, w8;
       // wire[15:0] w11, w12;
     wire [7:0] din1, din2;
    // wire [7:0] count1; wire [7:0]count2;
        
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  ro1 ro1(enable, din1[0]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  ro2 ro2(enable, din1[1]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  ro3 ro3(enable, din1[2]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  ro4 ro4(enable, din1[3]);
		  
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro5 ro5(enable, din1[4]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro6 ro6(enable, din1[5]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro7 ro7(enable, din1[6]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro8 ro8(enable, din1[7]);
        
		  
		 (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro1 ro9(enable,  din2[0]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  ro2 ro10(enable, din2[1]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  ro3 ro11(enable, din2[2]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  ro4 ro12(enable, din2[3]);
		  
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro5 ro13(enable, din2[4]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro6 ro14(enable, din2[5]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro7 ro15(enable, din2[6]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   ro8 ro16(enable, din2[7]);
      mux_3x8 M1(din1,m1out,sel1 );
      mux_3x8 M2(din2,m2out ,sel2);
		 
         
				 
         //cac cac(m1out,m2out,enable,reset, count_1, count_2);
			cac2 cac2(m2out,m1out,enable,reset, count_2, count_1);

        comp comp(count_2,count_1,count) ;
			  
            
endmodule
