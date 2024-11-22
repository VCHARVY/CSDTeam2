module top_level(
    output reg [3:0] led,  // 4-bit LED output for results
    input clk              // Clock input (for synchronization)
);  

    // Hardcoded ALU operands and control signal
    reg [31:0] operandA = 32'h0000000A;    // Example operand A (10 in decimal)
    reg [31:0] operandB = 32'h00000002;    // Example operand B (5 in decimal)
    reg [5:0] alu_ctrl = 6'h00;            // Example operation code (00 for addition)
    
    wire [31:0] result;                    // ALU result
    wire [2:0] nzc;                        // NZC flags from ALU
    
    // Instantiate your ALU module (the one provided in alu.v)
    top my_alu (
        .a(operandA),
        .b(operandB),
        .alu_ctrl(alu_ctrl),
        .o(result),
        .nzc(nzc)
    );
    
    // Display only the lower 4 bits of the result on the LEDs
    always @(posedge clk) begin
        led <= result[3:0];
    end
    
endmodule
