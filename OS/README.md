# OS Project

## Project Structure
<pre>
OS/
├── boot/               # Bootloader and kernel binary
├── drivers/            # Drivers for VGA and keyboard
├── process/            # Process management
├── file_system/        # File system implementation
├── kernel.c            # Main kernel logic
├── linker.ld           # Linker script
├── Makefile            # Build and run the OS
</pre>
## Features

- **Bootloader**: Initializes the system and loads the kernel.
- **Kernel**: Manages processes, memory, and I/O.
- **Drivers**:
  - **VGA**: For text output to the screen.
  - **Keyboard**: For user input.
- **Process Management**: Context switching and Process Control Blocks (PCBs).
- **File System**: Minimal file system implemented in RAM.

---

## Prerequisites

- **Compiler/Tools**:
  - GCC (with `-m32` for i386)
  - NASM
  - GRUB2 tools (`grub2-mkrescue`)
  - QEMU
  - GDB (for debugging)
- **Environment**:
  - Linux-based system (recommended)

---
## Build Instructions

1. Clone the repository and navigate to the OS project directory:
2. run the command `make run`
3. if debugging is needed  `make debug`
   This should start a qemu session with our OS image on it.


