
# 32-bit Processor Design Project

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

FPGA:
