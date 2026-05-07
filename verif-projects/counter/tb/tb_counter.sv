`timescale 1ns/1ps

module tb_counter;

    logic clk = 0;
    logic rst_n, load, en, up;
    logic [7:0] load_val, count;
    logic overflow;

    counter dut (.*);

    always #5 clk = ~clk;

    // Reference model
    logic [7:0] ref_count;
    logic       ref_ov;

    initial begin
        $display("=== Counter Verification Started ===");
        rst_n = 0;
        load = 0; en = 0; up = 1;
        #20 rst_n = 1;

        // Test load
        load_val = 8'hA5;
        load = 1; @(posedge clk); load = 0;

        // Random stimulus
        repeat (50) begin
            en = $urandom_range(0,1);
            up = $urandom_range(0,1);
            load = $urandom_range(0,1);
            if (load) load_val = $urandom;
            @(posedge clk);

            // Update reference
            if (!rst_n) ref_count = 0;
            else if (load) ref_count = load_val;
            else if (en) begin
                if (up) {ref_ov, ref_count} = ref_count + 1;
                else    {ref_ov, ref_count} = {1'b0, ref_count} - 1;
            end

            assert (count === ref_count) else
                $error("Count mismatch! DUT=%0d REF=%0d", count, ref_count);
        end

        $display("=== Counter Verification Completed ===");
        $finish;
    end

endmodule