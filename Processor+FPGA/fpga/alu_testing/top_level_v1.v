module top_level(
    input [3:0] sw,        // 4-bit switch inputs
    input [3:0] btn,       // 5 buttons for control
    output reg [3:0] led,  // 4-bit LED output for results
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
        //assign led = sw;
        case (state)
            IDLE: 
                //led <= sw;
                if (btn[0] || btn[1] || btn[2] || btn[3]) begin
                    operandA <= {28'b0, sw};  // Take first 4-bit input from switches
                    led <= sw;                // Debug: show operandA being captured
                    // Based on the button pressed, set the alu_ctrl signal for the corresponding operation
                    if (btn[0]) alu_ctrl <= 6'h00; // Addition
                    else if (btn[1]) alu_ctrl <= 6'h01; // Subtraction
                    else if (btn[2]) alu_ctrl <= 6'h02; // Multiplication
                    else if (btn[3]) alu_ctrl <= 6'h03; // Division
                    state <= INPUT_B;         // Move to next state to capture second operand
                end
           
            INPUT_B: 
                if (btn[3]) begin
                    operandB <= {28'b0, sw};  // Take second 4-bit input from switches
                    led <= sw;                // Debug: show operandA being captured
                    state <= EXECUTE;         // Ready for execution
                end
            
            EXECUTE: begin                
                // Display only the lower 4 bits of the result on the LEDs
                led <= result[3:0];
                
                state <= IDLE;  // Return to idle state
            end
        endcase
    end
endmodule
