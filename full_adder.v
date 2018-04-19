module full_adder(a, b, sum, cin, cout);
input a;
input b;
input cin;

output sum;
output cout;

//Useful gate level primitives : OR, AND, XOR
assign sum = a ^ b ^ cin;
assign cout = (a&b) | (b&cin) | (a&cin);

endmodule