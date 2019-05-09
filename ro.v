`timescale 1ns/1ps
module ro1(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5;  
		
		  
        and #1(w1, en, out);
        not #1(w2, w1);
        not #1(w3, w2);
        not #1(w4,w3);
        not #1(w5, w4);
        not #1(out, w5);
       
		
endmodule

module ro2(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5; 
		
		  
        and #2(w1, en, out);
        not #2(w2, w1);
        not #2(w3, w2);
        not #2(w4,w3);
        not #2(w5, w4);
        not #2(out, w5);
        
		
endmodule

module ro3(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5;
		
		  
        and #3(w1, en, out);
        not #3(w2, w1);
        not #3(w3, w2);
        not #3(w4,w3);
        not #3(w5, w4);
        not #3(out, w5);
        
		
endmodule

module ro4(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5;
		
		  
        and #4(w1, en, out);
        not #4(w2, w1);
        not #4(w3, w2);
        not #4(w4,w3);
        not #4(w5, w4);
        not #4(out, w5);
        
		
endmodule

module ro5(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5; 
		
		  
        and #5(w1, en, out);
        not #5(w2, w1);
        not #5(w3, w2);
        not #5(w4,w3);
        not #5(w5, w4);
        not #5(out, w5);
       
		
endmodule

module ro6(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5;
		
		  
        and #6(w1, en, out);
        not #6(w2, w1);
        not #6(w3, w2);
        not #6(w4,w3);
        not #6(w5, w4);
        not #6(out, w5);
        
endmodule

module ro7(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5;  
		
		  
        and #7(w1, en, out);
        not #7(w2, w1);
        not #7(w3, w2);
        not #7(w4,w3);
        not #7(w5, w4);
        not #7(out, w5);
       
		
endmodule

module ro8(
				input en,
				output out
			);
	 
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *) 
	    wire w1, w2, w3,w4,w5; 
		
		  
        and #8(w1, en, out);
        not #8(w2, w1);
        not #8(w3, w2);
        not #8(w4,w3);
        not #8(w5, w4);
        not #8(out, w5);
        
		
endmodule

