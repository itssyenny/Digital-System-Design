module binary_adder(a, b, sum);
input[5:0] a;
input[5:0] b;

output[5:0] sum;
output Carry;

wire[4:0] c;

//Cin is initially 0 indicates addition. Otherwise if Cin = 1, then it indicates subtraction
//full_adder(a, b, sum, cin, cout);
full_adder FA_0 (a[0], b[0], Sum[0], 1'b0, c[0]); 
full_adder FA_1 (a[1], b[1], Sum[1], c[0], c[1]);
full_adder FA_2 (a[2], b[2], Sum[2], c[1], c[2]);
full_adder FA_3 (a[3], b[3], Sum[3], c[2], c[3]);
full_adder FA_4 (a[4], b[4], Sum[4], c[3], c[4]);
full_adder FA_5 (a[5], b[5], Sum[5], c[4], Carry);

endmodule
