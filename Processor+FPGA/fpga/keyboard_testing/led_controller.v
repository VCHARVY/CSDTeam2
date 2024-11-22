module led_controller (
    input wire clk,
    input wire reset,
    input wire [7:0] scan_code,         // scan_code from keyboard module
    input wire scan_code_ready,         // signal that new scan code is available
    output reg LD0,                     // LED for 'A' key
    output reg LD1,                     // LED for 'B' key
    output reg LD2,                     // LED for 'C' key
    output reg LD3                      // LED for 'D' key
);

    // Timer parameters for ~0.5 seconds (modify based on clock frequency)
    parameter TIMER_LIMIT = 62_500_000; // For 125MHz clock

    // State and timer declarations
    reg [24:0] timer;                   // 25-bit timer for 0.5 seconds
    reg [3:0] led_state;                // Holds LED on/off state for each key

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset all LEDs and timer
            LD0 <= 0;
            LD1 <= 0;
            LD2 <= 0;
            LD3 <= 0;
            timer <= 0;
            led_state <= 4'b0000;
        end else begin
            // Check for scan_code_ready signal
            if (scan_code_ready) begin
                // Set LED based on scan_code for 'A', 'B', 'C', 'D'
                case (scan_code)
                    8'h1C: led_state <= 4'b0001; // 'A' key
                    8'h32: led_state <= 4'b0010; // 'B' key
                    8'h21: led_state <= 4'b0100; // 'C' key
                    8'h23: led_state <= 4'b1000; // 'D' key
                    default: led_state <= 4'b0000; // No action for other keys
                endcase
                timer <= 0; // Reset timer on new key press
            end else if (timer < TIMER_LIMIT) begin
                timer <= timer + 1;
            end else begin
                // Reset LEDs after 0.5 seconds
                led_state <= 4'b0000;
            end

            // Set LEDs based on led_state
            LD0 <= led_state[0];
            LD1 <= led_state[1];
            LD2 <= led_state[2];
            LD3 <= led_state[3];
        end
    end

endmodule
