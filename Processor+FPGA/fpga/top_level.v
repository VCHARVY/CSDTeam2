module top_level(
    input [3:0] SW,        // 4-bit switch inputs
    input [4:0] BTN,       // 5 buttons for control
    output reg [3:0] LED,  // 4-bit LED output for results
    input clk              // Clock input (for synchronization)
);

    reg [31:0] operandA, operandB;    // ALU operands
    reg [5:0] alu_ctrl;               // ALU control signal
    wire [31:0] result;               // ALU result
    wire [2:0] nzc;                   // NZC flags from ALU

    reg [1:0] state;  // FSM states for operand selection and operation execution
    localparam IDLE = 2'b00, INPUT_A = 2'b01, INPUT_B = 2'b10, EXECUTE = 2'b11;

    // Instantiate your ALU module (the one provided in alu.v)
    top my_alu (
        .a(operandA),
        .b(operandB),
        .alu_ctrl(alu_ctrl),
        .o(result),
        .nzc(nzc)
    );

    always @(posedge clk) begin
        case (state)
            IDLE: begin
                if (BTN[0] || BTN[1] || BTN[2] || BTN[3]) begin
                    operandA <= {28'b0, SW};  // Take first 4-bit input from switches
                    state <= INPUT_B;         // Move to next state to capture second operand
                end
            end
            INPUT_B: begin
                if (BTN[4]) begin
                    operandB <= {28'b0, SW};  // Take second 4-bit input from switches
                    state <= EXECUTE;         // Ready for execution
                end
            end
            EXECUTE: begin
                // Based on the button pressed, set the alu_ctrl signal for the corresponding operation
                if (BTN[0]) alu_ctrl <= 6'h00; // Addition
                else if (BTN[1]) alu_ctrl <= 6'h01; // Subtraction
                else if (BTN[2]) alu_ctrl <= 6'h02; // Multiplication
                else if (BTN[3]) alu_ctrl <= 6'h03; // Division
                
                // Display only the lower 4 bits of the result on the LEDs
                LED <= result[3:0];
                
                state <= IDLE;  // Return to idle state
            end
        endcase
    end
endmodule
