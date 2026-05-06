// 4-bit Adder DUT
module adder (
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] sum,
    output logic       cout
);
    assign {cout, sum} = a + b;
endmodule