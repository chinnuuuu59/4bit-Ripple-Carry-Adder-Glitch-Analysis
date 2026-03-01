`timescale 1ns/1ps

module rca_4bit_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

rca_4bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

A = 0;
B = 0;
Cin = 0;

repeat (20) begin
    #10 A = $random;
    B = $random;
    Cin = $random;
end

#100 $finish;

end
endmodule