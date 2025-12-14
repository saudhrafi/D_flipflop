module D_FlipFlop (
    input  wire clk, rst, D,
    output reg  Q
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 1'b0;       // Asynchronous reset
        else
            Q <= D;          // Latch D on rising clock edge
    end

endmodule
