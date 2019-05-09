`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:29:14 04/16/2019
// Design Name:   top
// Module Name:   C:/Users/raush/Desktop/1601EE_34_36_Design/tb_top.v
// Project Name:  designlab
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_top;

	// Inputs
	reg [2:0] sel1;
	reg [2:0] sel2;
	reg enable;
	reg reset;

	// Outputs
	wire m1out;
	wire m2out;
	wire [7:0] count;
	wire [7:0] count_1;
	wire [7:0] count_2;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.sel1(sel1), 
		.sel2(sel2), 
		.enable(enable), 
		.reset(reset), 
		.m1out(m1out), 
		.m2out(m2out), 
		.count(count), 
		.count_1(count_1), 
		.count_2(count_2)
	);

	initial begin
		// Initialize Inputs
		sel1 = 0;
		sel2 = 0;
		enable = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#10;
      sel1 = 3'b000;
		sel2 = 3'b001;
		enable =1;
		reset = 0;
		// Add stimulus here

	end
      
endmodule

