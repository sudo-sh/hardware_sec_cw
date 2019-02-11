

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
# in_n=int(math.ceil(math.log(15.*int(n),2))) #Assuming 4 bit max value as 15.






def create_add_nbit(in_n):

	verilog_file=open("FA_adder"+str(in_n)+"bit.v","w")



	verilog_file.write("module adder"+str(in_n)+"bit(a, b, sum); \n input ["+ str(in_n-1) +":0] a; \n input ["+ str(in_n-1) +":0] b; \n output ["+ str(in_n) +":0] sum; \n ")

	verilog_file.write("wire ["+ str(in_n-1) +":0] cout_in;\n")



	'''
	Now we have instantiated the module, need to make the adder using single bit FA's
	'''

	verilog_file.write("oneb_FA A0( a[0], b[0], 1'b0 , sum[0] , cout_in[0]);\n")


	for i in range(1, in_n-1):

		verilog_file.write("oneb_FA A"+ str(i) +"( a["+ str(i) +"], b["+ str(i) +"], cout_in["+ str(i-1) +"], sum["+ str(i) +"] , cout_in["+ str(i) +"]);\n")


	verilog_file.write("oneb_FA A"+ str(in_n) +"( a["+ str(in_n-1) +"], b["+ str(in_n-1) +"], cout_in["+ str(in_n-2) +"] , sum["+ str(in_n-1) +"] , sum["+ str(in_n) +"]);\n")



	verilog_file.write("endmodule\n")

	verilog_file.close()

	print "Verilog_File Generated for Adder"





'''
Creating Module for a Single bit adder
'''



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





#create_add_nbit(int(n))

'''
Need to create the main module for the additions 

'''


int_n=int(n)


out_bits=int(math.ceil(math.log(15*int_n,2))) #Assuming 4 bits


verilog_top_file=open("top_adder.v","w")



verilog_top_file.write("module top_adder(arr, sum ); \n input ["+ str((int_n*4)-1) +":0] arr; \n output ["+ str(out_bits) +":0] sum; \n ")

#verilog_file.write("wire ["+ str(in_n-1) +":0] cout_in;\n")


'''
Number of wires declaration
'''




iter_n=int_n
bit_adder=4 #Initially start with 4 bit adders
temp=4

for m in range(0,int(math.log(int_n,2))): 

	create_add_nbit(temp+m)	





for i in range(0,int(math.log(int_n,2)-1)): #Iterates for 6 cycles in case of 128, write the last one manually

	#create_add_nbit(bit_adder)

	verilog_top_file.write("wire  ["+str(((bit_adder+1)*(iter_n/2))-1)+":0] out_"+str(bit_adder)+"; \n")
	
	for j in range(0,((iter_n/2))):

		j_=j*2;
		
		if(i==0):
			verilog_top_file.write("adder"+str(bit_adder)+"bit A"+str(bit_adder)+str(j)+"(arr["+str(bit_adder*(j_+1) -1)+":"+ str(bit_adder*j_)+"], arr["+str(bit_adder*(j_+2) -1)+":"+ str(bit_adder*(j_+1))+"], out_"+str(bit_adder)+"["+str((bit_adder+1)*(j+1) -1)+":"+ str((bit_adder
		+1)*j)+"]);\n")

		else:
			verilog_top_file.write("adder"+str(bit_adder)+"bit A"+str(bit_adder)+str(j)+"(out_"+str(bit_adder-1)+"["+str((bit_adder)*(j_+1) -1)+":"+ str((bit_adder)*j_)+"],out_"+str(bit_adder-1)+"["+str((bit_adder)*(j_+2) -1)+":"+ str((bit_adder)*(j_+1))+"], out_"+str(bit_adder)+"["+str((bit_adder+1)*(j+1) -1)+":"+ str((bit_adder
		+1)*j)+"]);\n")


		

	bit_adder=bit_adder+1
	print bit_adder
	iter_n=iter_n/2

	verilog_top_file.write("\n\n\n\n\n")

j_=0

verilog_top_file.write("adder"+str(bit_adder)+"bit A"+str(bit_adder)+str(1) +"(out_"+str(bit_adder-1)+"["+str((bit_adder)*(j_+1) -1)+":"+ str((bit_adder)*j_)+"],out_"+str(bit_adder-1)+"["+str((bit_adder)*(j_+2) -1)+":"+ str((bit_adder)*(j_+1))+"], sum["+str(out_bits-1)+":"+ str(0)+"]);\n")


verilog_top_file.write("endmodule\n")











