`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:41 02/07/2019 
// Design Name: 
// Module Name:    seq_add_array 
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
module seq_add_array( arr, in_check, rst ,clk, out  );


//input [511:0] arr; //512=128x4.

input [3:0]arr;
input [3:0] in_check;
input rst;

input clk;


output [11:0] out;


reg [11:0] a;
reg [11:0] b;
wire cout;

assign out=a;

wire [3:0] checked_in=in_check&arr;

wire [11:0] out_temp_s;

adder ADD(.a(a), .b(b), .sum(out_temp_s) , .cout(cout)); 


always @(posedge clk or posedge rst)
begin

if(rst )
begin
a[11:0]=0;
b[11:0]=0;


end

else

begin


a=out_temp_s;
b={8'b00000000,checked_in[3:0]};


end



end


endmodule
