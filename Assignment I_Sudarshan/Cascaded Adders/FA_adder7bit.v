module adder7bit(a, b, sum); 
 input [6:0] a; 
 input [6:0] b; 
 output [7:0] sum; 
 wire [6:0] cout_in;
oneb_FA A0( a[0], b[0], 1'b0 , sum[0] , cout_in[0]);
oneb_FA A1( a[1], b[1], cout_in[0], sum[1] , cout_in[1]);
oneb_FA A2( a[2], b[2], cout_in[1], sum[2] , cout_in[2]);
oneb_FA A3( a[3], b[3], cout_in[2], sum[3] , cout_in[3]);
oneb_FA A4( a[4], b[4], cout_in[3], sum[4] , cout_in[4]);
oneb_FA A5( a[5], b[5], cout_in[4], sum[5] , cout_in[5]);
oneb_FA A7( a[6], b[6], cout_in[5] , sum[6] , sum[7]);
endmodule
