module oneb_FA( a, b, cin, sum , cout);
input a ;
input b ;
input cin;
output wire sum;
output wire cout;
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
