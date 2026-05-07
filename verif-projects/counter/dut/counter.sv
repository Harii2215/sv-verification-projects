// 8-bit Loadable Up/Down Counter
module counter #(
    parameter int WIDTH = 8
)(
    input  logic             clk,
    input  logic             rst_n,
    input  logic             load,
    input  logic             en,
    input  logic             up,       // 1 = up, 0 = down
    input  logic [WIDTH-1:0] load_val,
    output logic [WIDTH-1:0] count,
    output logic             overflow
);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= '0;
            overflow <= 0;
        end else if (load) begin
            count <= load_val;
            overflow <= 0;
        end else if (en) begin
            if (up) begin
                {overflow, count} <= count + 1;
            end else begin
                {overflow, count} <= {1'b0, count} - 1;
            end
        end
    end

endmodule