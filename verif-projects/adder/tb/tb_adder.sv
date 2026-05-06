`timescale 1ns/1ps

module tb_adder;

    logic [3:0] a, b;
    logic [3:0] sum;
    logic       cout;

    // Instantiate DUT
    adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    // Directed + Random Test
    initial begin
        $display("=== 4-bit Adder Verification Started ===");

        // Directed tests
        test_case(4'd0, 4'd0);
        test_case(4'd15, 4'd1);
        test_case(4'd8, 4'd8);
        test_case(4'd5, 4'd3);

        // Random tests (20 iterations)
        repeat (20) begin
            a = $urandom_range(0, 15);
            b = $urandom_range(0, 15);
            #5;
            check_result();
        end

        $display("=== Verification Completed ===");
        $finish;
    end

    task test_case(input logic [3:0] in_a, input logic [3:0] in_b);
        a = in_a;
        b = in_b;
        #5;
        check_result();
    endtask

    task check_result;
        logic [4:0] expected = a + b;
        if ({cout, sum} !== expected) begin
            $error("FAIL: a=%0d, b=%0d, got sum=%0d, cout=%0d | expected sum=%0d, cout=%0d",
                   a, b, sum, cout, expected[3:0], expected[4]);
        end else begin
            $display("PASS: a=%0d, b=%0d, sum=%0d, cout=%0d", a, b, sum, cout);
        end
    endtask

endmodule