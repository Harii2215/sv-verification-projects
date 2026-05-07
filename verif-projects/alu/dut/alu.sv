// Parameterized ALU (32-bit default)
module alu #(
    parameter int WIDTH = 32
)(
    input  logic             clk,
    input  logic             rst_n,
    input  logic [2:0]       opcode,
    input  logic [WIDTH-1:0] a,
    input  logic [WIDTH-1:0] b,
    output logic [WIDTH-1:0] result,
    output logic             zero,
    output logic             carry,
    output logic             overflow,
    output logic             negative
);

    logic [WIDTH:0]   alu_result;
    logic [WIDTH-1:0] alu_out;

    always_comb begin
        carry = 0;
        overflow = 0;
        case (opcode)
            3'b000: alu_result = a + b;                    // ADD
            3'b001: alu_result = a - b;                    // SUB
            3'b010: alu_result = a & b;                    // AND
            3'b011: alu_result = a | b;                    // OR
            3'b100: alu_result = a ^ b;                    // XOR
            3'b101: alu_result = a << b[4:0];              // SLL
            3'b110: alu_result = a >> b[4:0];              // SRL
            3'b111: alu_result = (a < b) ? 1 : 0;          // SLT
            default: alu_result = '0;
        endcase

        alu_out = alu_result[WIDTH-1:0];
        carry   = alu_result[WIDTH];
        overflow = (opcode == 3'b000 || opcode == 3'b001) &&
                   (a[WIDTH-1] == b[WIDTH-1]) &&
                   (alu_out[WIDTH-1] != a[WIDTH-1]);
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result  <= '0;
            zero    <= 0;
            negative <= 0;
        end else begin
            result   <= alu_out;
            zero     <= (alu_out == 0);
            negative <= alu_out[WIDTH-1];
        end
    end

endmodule