

import sys
import math

n_arg=2

if(len(sys.argv)==n_arg):
	print "The number entered is",
	print sys.argv[1]
	
else:
	print "Please enter a number to continue"
	exit(-1)

n=sys.argv[1]
'''
Need to calculate the upper bound of the input of the accumulator
Since we are using single adder as sequential accumulator.
'''
in_n=int(math.ceil(math.log(15.*int(n),2))) #Assuming 4 bit max value as 15.





verilog_adder_file=open("oneb_FA.v","w")


verilog_adder_file.write("module oneb_FA( a, b, cin, sum , cout);\n")

verilog_adder_file.write("input a ;\n")

verilog_adder_file.write("input b ;\n")
verilog_adder_file.write("input cin;\n")
verilog_adder_file.write("output wire sum;\n")
verilog_adder_file.write("output wire cout;\n");

verilog_adder_file.write("assign sum=a^b^cin;\n")
verilog_adder_file.write("assign cout=(a&b)|(b&cin)|(cin&a);\n")

verilog_adder_file.write("endmodule\n")

verilog_adder_file.close()


verilog_file=open("single_adder.v","w")



verilog_file.write("module adder(a, b, sum ,cout); \n input ["+ str(in_n) +":0] a; \n input ["+ str(in_n) +":0] b; \n output ["+ str(in_n) +":0] sum; \n output cout; \n ")

verilog_file.write("wire ["+ str(in_n-1) +":0] cout_in;\n")



'''
Now we have instantiated the module, need to make the adder using single bit FA's
'''

verilog_file.write("oneb_FA A0( a[0], b[0], 0 , sum[0] , cout_in[0]);\n")


for i in range(1, in_n):

	verilog_file.write("oneb_FA A"+ str(i) +"( a["+ str(i) +"], b["+ str(i) +"], cout_in["+ str(i-1) +"], sum["+ str(i) +"] , cout_in["+ str(i) +"]);\n")


verilog_file.write("oneb_FA A"+ str(in_n) +"( a["+ str(in_n) +"], b["+ str(in_n) +"], cout_in["+ str(in_n-1) +"] , sum["+ str(in_n) +"] , cout);\n")



verilog_file.write("endmodule\n")

verilog_file.close()

print "Verilog_File Generated"



'''
Now Since the Adder Block is generated we need to generate the accumulator operation
So, this will be a sequential design
'''