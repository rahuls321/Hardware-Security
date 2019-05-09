`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:19 01/31/2019 
// Design Name: 
// Module Name:    mux_4x1 
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
module mux_4x1( din ,sel ,dout );

output dout ;
reg dout ;

input [3:0] din ;
wire [3:0] din ;
input [1:0] sel ;
wire [1:0] sel ;

always @ (din or sel) begin
 if (sel==0)
  dout = din[3];
 else if (sel==1)
  dout = din[2];
 else if (sel==2)
  dout = din[1];
 else
  dout = din[0];
end
endmodule

module mux_3x8(in,out,sel);
 
input [7:0]in;
input [2:0]sel;
output out;
 
reg out;
wire [2:0]sel;
wire [7:0]in;
 
always @(sel or in)
begin
 
if (sel==0)
out = in[0];
if (sel==1)
out = in[1];
if (sel==2)
out = in[2];
if (sel==3)
out = in[3];
if (sel==4)
out = in[4];
if (sel==5)
out = in[5];
if (sel==6)
out = in[6];
if (sel==7)
out = in[7];
end
 
endmodule
