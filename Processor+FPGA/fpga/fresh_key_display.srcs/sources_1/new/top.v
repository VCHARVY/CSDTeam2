`timescale 1ns / 1ps

module TopModule(
    input clk,
    input ps2c,
    input ps2d,
    output [2:0] TMDSp,
    output [2:0] TMDSn,
    output TMDSp_clock,
    output TMDSn_clock,
    output reg [3:0] led
);

// Signals for display data and write enable
wire [31:0] dispData;
wire write_enable;
wire [15:0] address;
reg [15:0] addr_reg; // Address register to keep track of the current address

// Processor-related signals
wire mem_valid;
wire mem_instr;
reg mem_ready;
wire [31:0] mem_addr;
wire [31:0] mem_wdata;
wire [3:0] mem_wstrb;
reg [31:0] mem_rdata;
wire trap;
reg [31:0] memory [0:255]; // Memory to interface with processor

reg [3:0] hardcoded_value = 4'b1010; 
reg enable_processor = 1'b1;         // Initial enable state for processor


initial begin
		$readmemh("ez3.mem", memory);
		end


// Increment address logic
always @(posedge clk) begin
    if (write_enable) begin
        addr_reg <= addr_reg + 1; // Increment address for the next write
        if (addr_reg == 16'd2399) begin
            addr_reg <= 16'd0; // Wrap around if needed
        end
    end
end

assign address = addr_reg; // Use this address for memory and display

//// Memory interface with the processor
//always @(posedge clk) begin
//    if (mem_valid && !trap) begin
//        if (mem_addr < 512) begin
//            mem_ready <= 1;
//            mem_rdata <= memory[mem_addr >> 2];
//            if (mem_wstrb[0]) memory[mem_addr >> 2][ 7: 0] <= mem_wdata[ 7: 0];
//            if (mem_wstrb[1]) memory[mem_addr >> 2][15: 8] <= mem_wdata[15: 8];
//            if (mem_wstrb[2]) memory[mem_addr >> 2][23:16] <= mem_wdata[23:16];
//            if (mem_wstrb[3]) memory[mem_addr >> 2][31:24] <= mem_wdata[31:24];
//        end
//        else begin
//				led <= memory[mem_addr >> 2][3:0];
////                led <= 4'b0110;
//			end
//    end
//end


	always @(posedge clk) begin
		mem_ready <= 0;
		if (mem_valid && !mem_ready && !trap) begin
			if (mem_addr < 512) begin
				mem_ready <= 1;
				mem_rdata <= memory[mem_addr >> 2];
				if (mem_wstrb[0]) memory[mem_addr >> 2][ 7: 0] <= mem_wdata[ 7: 0];
				if (mem_wstrb[1]) memory[mem_addr >> 2][15: 8] <= mem_wdata[15: 8];
				if (mem_wstrb[2]) memory[mem_addr >> 2][23:16] <= mem_wdata[23:16];
				if (mem_wstrb[3]) memory[mem_addr >> 2][31:24] <= mem_wdata[31:24];
			end
			/* add memory-mapped IO here */
//			else begin
//				led <= memory[mem_addr >> 2][3:0];
//			end
		end
		// Select LED value based on enable_processor signal
        if (enable_processor) begin
            led <= memory[mem_addr >> 2][3:0]; // Value from memory
        end else begin
            led <= hardcoded_value; // Hardcoded value
        end
	end
//assign led = memory[mem_addr >> 2][3:0];

// Allow updates to hardcoded_value and enable_processor for testing
always @(posedge clk) begin
    // Keep the processor disabled and use the hardcoded value
    enable_processor <= 1'b0; // Disable processor
    hardcoded_value <= 4'b0001; // Update hardcoded value (example: 4'b1100)
end

// Instantiate the display driver module
DisplayDriver displayDriver_inst (
    .clk(clk),
    .displayData(dispData), // Connect displayData from memory to the display driver
    .TMDSp(TMDSp),
    .TMDSn(TMDSn),
    .TMDSp_clock(TMDSp_clock),
    .TMDSn_clock(TMDSn_clock),
    .pointer(address) // Use address for display memory pointer
);

// Instantiate the keyboard driver module
keyboardDriver keyboardDriver_inst (
    .ps2c(ps2c),
    .ps2d(ps2d),
    .sysclk(clk),
    .dispData(dispData),
    .write_enable(write_enable),
    .scan_code_ready(scan_code_ready),
    .ascii_code(ascii_code)
);

// Instantiate the screen memory module
Screen_Memory screenMemory_inst (
    .clock(clk),
    .address(address), // Connect the address to the screen memory
    .byteWrite(1'b0), // Assuming full word write for this example
    .isWrite(write_enable), // Write enable from keyboard driver
    .writeData(dispData), // Data from keyboard driver to write to memory
    .displayData(displayData) // Connect display data to driver
);

// Instantiate the processor
csdt2 processor (
    .clk(clk),
    .resetn(1'b1), // Assuming no reset logic needed here
    .trap(trap),
    .mem_valid(mem_valid),
    .mem_instr(mem_instr),
    .mem_ready(mem_ready),
    .mem_addr(mem_addr),
    .mem_wdata(mem_wdata),
    .mem_wstrb(mem_wstrb),
    .mem_rdata(mem_rdata)
);



endmodule 
