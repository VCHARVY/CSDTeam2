
# 32-bit Processor Design

This repository contains the implementation and testing of a custom 32-bit processor with an Instruction Set Architecture (ISA) inspired by ARM. The processor design, simulation, and testing were performed using multiple tools and workflows to ensure correctness and functionality.

---

## Project Overview

This project demonstrates the complete workflow of designing, implementing, and testing a 32-bit processor:

1. **Processor Design**: 
   - The processor's source code was written in [Amaranth HDL](https://amaranth-lang.org/), a modern hardware description language.
   - The design was transpiled into Verilog for compatibility with various simulation and synthesis tools.

2. **Program Loading**:
   - Programs for the processor were written in assembly, compiled, and loaded as `.mem` files.
   - These files were used for simulation and testing, ensuring accurate representation of instruction execution.

3. **Testing and Verification**:
   - **Amaranth Testbenches**: Functional testing was performed using Amaranth's built-in simulation tools.
   - **ModelSim**: The processor was simulated in ModelSim using `.mem` files for program input to verify cycle-accurate behavior.
   - **Vivado**: Additional simulations were conducted in Xilinx Vivado to validate the design under a more robust simulation environment.

---

## Features

- **ISA**: The processor implements a subset of ARM-inspired instructions, including arithmetic, logical, load/store, and branch operations.
- **Tools and Workflows**:
  - Written in Amaranth HDL for modular and extensible design.
  - Transpiled to Verilog for compatibility with industry-standard tools.
  - Tested using a combination of Amaranth, ModelSim, and Vivado.
- **Extensibility**: The modular design allows for easy extension of the ISA or addition of new features.

---

## Tools Used

- **Amaranth HDL**: Used for writing and simulating the initial processor design.
- **ModelSim**: Employed for simulating the Verilog design with `.mem` files to test the execution of programs.
- **Vivado**: Used for further simulation and to prepare the design for potential FPGA synthesis.
- **Git**: Version control for managing source files and collaboration.

---

## Running the Project

### Prerequisites

- [Amaranth HDL](https://amaranth-lang.org/)
- [ModelSim](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/modelsim.html)
- [Vivado](https://www.xilinx.com/products/design-tools/vivado.html)
- Python (for Amaranth simulations)

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/EndlessKn0t/CSDTeam2.git
   cd CSDTeam2/Processor+FPGA
   ```

2. **Run Amaranth Simulations**:
   - Ensure Python and Amaranth are installed.
   - Execute the testbenches located in the `amaranth/tests` folder.

4. **Run ModelSim Simulation**:
   - Load the `.mem` file into ModelSim and simulate the Verilog design.

5. **Simulate in Vivado**:
   - Import the Verilog files into Vivado and simulate using the built-in tools.


---

# FPGA and System Integration

This repository contains the implementation and integration of basic circuits and a custom processor on FPGA platforms. The project also involved writing drivers for keyboard and display access, showcasing the system's functionality. The work was conducted on Zynq-7000 and Zybo Z7010 boards, leveraging Vivado for synthesis, implementation, and bitstream generation.

---

## Repository Link

You can access the project files in the GitHub repository: [CSDTeam2/Processor+FPGA](https://github.com/EndlessKn0t/CSDTeam2/tree/main/Processor%2BFPGA)

---

## Project Overview

This project consisted of the following phases:

1. **Processor Integration on FPGA**:
   - The 32-bit processor designed in course project was ported to the Zynq-7000 and Zybo Z7010 boards.
   - The processor was tested for its functionality by loading programs into the on-chip memory.

2. **Peripheral Driver Development**:
   - Custom drivers were written to enable:
     - **Keyboard Access**: Captured input from an attached keyboard.
     - **Display Access**: Displayed processor output on a connected screen.

3. **On-chip Memory Usage**:
   - Programs were stored and executed directly from on-chip memory instead of using DDR memory for simplicity.

---

## Features

- **Learning and Implementation**:
  - Hands-on experience with FPGA programming and system integration.
  - Designed basic circuits to understand hardware implementation on FPGA.
- **Processor Integration**:
  - Verified the functionality of a custom 32-bit processor on FPGA.
  - Loaded and executed programs stored in on-chip memory.
- **Peripheral Integration**:
  - Implemented keyboard and display drivers to demonstrate a functional system.

---

## Tools and Hardware Used

- **Vivado**: Used for synthesis, implementation, simulation, and bitstream generation.
- **Zynq-7000 and Zybo Z7010 Boards**: Hardware platforms used for circuit implementation and testing.
- **On-chip Memory**: Utilized for program storage and execution.
- **Peripheral Devices**:
  - Keyboard (input device)
  - Display (output device)

---

## Running the Project

### Prerequisites

- Xilinx Vivado Design Suite (compatible with Zynq-7000 or Zybo Z7010 boards).
- Access to a Zynq-7000 or Zybo Z7010 FPGA board.
- Peripheral devices (keyboard and display).

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/EndlessKn0t/CSDTeam2.git
   cd CSDTeam2/Processor+FPGA
   ```

2. **Basic Circuit Implementation**:
   - Open Vivado and load the basic designs located in the `fpga` folder.
   - Synthesize, implement, and generate the bitstream for the desired circuit.

3. **Processor Integration**:
   - Load the 32-bit processor Verilog files into Vivado.
   - Set up the on-chip memory for program loading and execution.
   - Synthesize and implement the design.
   - Generate the bitstream and load it onto the FPGA.

4. **Peripheral Driver Testing**:
   - Connect the keyboard and display to the FPGA board.
   - Load the keyboard and display driver source files in Vivado.

