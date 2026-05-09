// D Flip-Flop DUT
module dff (dff_if vif);

    always_ff @(posedge vif.clk) begin
        if (vif.rst)
            vif.dout <= 1'b0;
        else
            vif.dout <= vif.din;
    end

endmodule

// Interface
interface dff_if;
    logic clk;
    logic rst;
    logic din;
    logic dout;
endinterface