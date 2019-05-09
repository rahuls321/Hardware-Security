`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:05 08/06/2017 
// Design Name: 
// Module Name:    ring_oscilator 
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
module ring_oscilator(
    input en,
    output o5,w5,
	 output [15:0]count,count1
    );
reg [15:0] count,count1;
(* S= "TRUE"*)wire o1,o2,o3,o4,o5,w1,w2,w3,w4,w5;

nand uut21(o1,en,o5);
not uut22(o2,o1);
not uut23(o3,o2);
not uut24(o4,o3);
not uut25(o5,o4);

nand uut26(w1,en,w5);
not uut27(w2,w1);
not uut28(w3,w2);
not uut29(w4,w3);
not uut30(w5,w4);


always @( posedge o5)
begin
if ( count== 16'b1111111111111111|count1==16'b1111111111111111)
begin
count=count ;
if (count1==16'b1111111111111111)
begin
$display("%d",count);
end
end
else
begin
count = count +1;
end
end
initial
begin
count= 16'b0;
count1= 16'b0;
end

always @( posedge w5)
begin
if ( count1== 16'b1111111111111111|count== 16'b1111111111111111)
begin
count1= count1;
if (count==16'b1111111111111111)
begin
$display("%d",count1);
end
end
else
begin
count1 = count1 +1;
end
end

endmodule
