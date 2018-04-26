`timescale 1ns/100ps

module binary_adder_tb;

reg[5:0] a;
reg[5:0] b;
wire[5:0] sum;

binary_adder adder_0 ( .a(a), .b(b), .sum(sum));

initial begin
	$dumpfile("binary_adder.vcd");
	$dumpvars;
end

initial begin
	a = 6'b000101; b = 6'b000011;		//sum should be 6'b001000
	# 100 a = 6'b000101; b = 6'b000111;	//sum should be 6'b001100
	# 100 a = 6'b001001; b = 6'b000010;	//sum should be 6'b001011
	# 100 a = 6'b011001; b = 6'b100010;	//sum should be 6'b111011
	# 100 a = 6'b001000; b = 6'b111011; 	//sum should b'6000011
	# 100 a = 6'b111101; b = 6'b111110;	//sum should be 6'b111011
	# 100;
	$finish;
end

initial begin 
	$monitor(,$time, " a = %b, b = %b, sum = %b\n", a, b, sum);
end

endmodule
