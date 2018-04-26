module full_adder(a, b, sum, cin, cout);
input a;
input b;
input cin;

output sum;
output cout;

wire t1, t2, t3;

//Useful gate level primitives : OR, AND, XOR
//assign sum = a ^ b ^ cin;
xor(t1, a, b);
xor(sum, t1, cin);
//assign cout = (a&b) | (b&cin) | (a&cin);
and(t2, t1, cin);
and(t3, a, b);
or(cout, t2, t3);

endmodule