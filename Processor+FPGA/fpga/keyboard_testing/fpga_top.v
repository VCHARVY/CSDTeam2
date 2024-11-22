module fpga_top (
    input wire clk, reset,
    input wire ps2d, ps2c,              // PS2 keyboard data and clock
    output wire LD0, LD1, LD2, LD3      // LEDs for A, B, C, D keys
);

    wire [7:0] scan_code;
    wire scan_code_ready;

    // Instantiate keyboard module
    keyboard keyboard_unit (
        .clk(clk),
        .reset(reset),
        .ps2d(ps2d),
        .ps2c(ps2c),
        .scan_code(scan_code),
        .scan_code_ready(scan_code_ready),
        .letter_case_out()
    );

    // Instantiate LED controller
    led_controller led_controller_unit (
        .clk(clk),
        .reset(reset),
        .scan_code(scan_code),
        .scan_code_ready(scan_code_ready),
        .LD0(LD0),
        .LD1(LD1),
        .LD2(LD2),
        .LD3(LD3)
    );

endmodule
