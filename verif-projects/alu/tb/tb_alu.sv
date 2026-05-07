`timescale 1ns/1ps

module tb_alu;

    parameter int WIDTH = 32;

    logic clk = 0;
    logic rst_n;
    logic [2:0] opcode;
    logic [WIDTH-1:0] a, b, result;
    logic zero, carry, overflow, negative;

    alu #(.WIDTH(WIDTH)) dut (.*);

    always #5 clk = ~clk;

    // Functional Coverage
    covergroup cg_alu @(posedge clk);
        cp_opcode: coverpoint opcode;
        cp_a_corner: coverpoint a { bins zero = {0}; bins max = {'1}; }
        cp_b_corner: coverpoint b { bins zero = {0}; bins max = {'1}; }
        cross cp_opcode, cp_a_corner;
    endgroup

    cg_alu cg = new();

    // Reference model
    function logic [WIDTH-1:0] ref_alu(input logic [2:0] op, input logic [WIDTH-1:0] x, y);
        case (op)
            3'b000: return x + y;
            3'b001: return x - y;
            3'b010: return x & y;
            3'b011: return x | y;
            3'b100: return x ^ y;
            3'b101: return x << y[4:0];
            3'b110: return x >> y[4:0];
            3'b111: return (x < y) ? 1 : 0;
            default: return 0;
        endcase
    endfunction

    initial begin
        $display("=== Advanced ALU Verification Started ===");
        rst_n = 0; #20; rst_n = 1;

        repeat (200) begin
            opcode = $urandom_range(0,7);
            a = $urandom;
            b = $urandom;
            @(posedge clk);

            logic [WIDTH-1:0] expected = ref_alu(opcode, a, b);
            assert (result === expected) else
                $error("ALU Mismatch! op=%0d a=%0h b=%0h got=%0h exp=%0h",
                       opcode, a, b, result, expected);
        end

        $display("=== ALU Verification Completed ===");
        $display("Functional Coverage: %0.2f%%", cg.get_coverage());
        $finish;
    end

endmodule