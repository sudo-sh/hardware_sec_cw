module adder4bit(a, b, sum); 
 input [3:0] a; 
 input [3:0] b; 
 output [4:0] sum; 
 wire [3:0] cout_in;
oneb_FA A0( a[0], b[0], 1'b0 , sum[0] , cout_in[0]);
oneb_FA A1( a[1], b[1], cout_in[0], sum[1] , cout_in[1]);
oneb_FA A2( a[2], b[2], cout_in[1], sum[2] , cout_in[2]);
oneb_FA A4( a[3], b[3], cout_in[2] , sum[3] , sum[4]);
endmodule
