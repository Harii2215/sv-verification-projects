`timescale 1ns/1ps

module tb_fifo;

    logic       clk = 0;
    logic       rst_n;
    logic       wr_en, rd_en;
    logic [7:0] wr_data, rd_data;
    logic       full, empty;

    // DUT
    fifo dut (
        .clk(clk),
        .rst_n(rst_n),
        .wr_en(wr_en),
        .wr_data(wr_data),
        .rd_en(rd_en),
        .rd_data(rd_data),
        .full(full),
        .empty(empty)
    );

    // Clock
    always #5 clk = ~clk;

    // Reference model (queue)
    logic [7:0] ref_queue[$];

    initial begin
        $display("=== Synchronous FIFO Verification Started ===");
        rst_n = 0;
        wr_en = 0;
        rd_en = 0;
        #20;
        rst_n = 1;

        // Write 8 values
        for (int i = 0; i < 8; i++) begin
            wr_en = 1;
            wr_data = $urandom_range(0, 255);
            ref_queue.push_back(wr_data);
            @(posedge clk);
        end
        wr_en = 0;

        // Read all values back
        for (int i = 0; i < 8; i++) begin
            rd_en = 1;
            @(posedge clk);
            if (rd_data !== ref_queue.pop_front()) begin
                $error("FIFO data mismatch!");
            end else begin
                $display("PASS: Read correct data = %0d", rd_data);
            end
        end
        rd_en = 0;

        $display("=== FIFO Verification Completed ===");
        $finish;
    end

endmodule