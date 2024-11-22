import sys
from typing import Dict, List, Tuple
import ast  # For safely parsing dictionary strings

class Linker:
    def __init__(self):
        self.global_symbol_table: Dict[str, int] = {}
        self.base_addresses: Dict[int, int] = {}
        self.program_lengths: Dict[int, int] = {}

    def read_object_file(self, filename: str) -> Tuple[List[str], Dict[str, int], int]:
        """
        Read an object file and return its components.
        Expected format:
        - Machine code (binary)
        #
        - Symbol table (dictionary)
        #
        - Program length (integer)
        """
        try:
            with open(filename, "r") as f:
                content = f.read().strip().split("#")
            
            # Parse machine code
            machine_code = content[0].strip().split("\n")
            
            # Parse symbol table (as dictionary)
            symbol_table = ast.literal_eval(content[1].strip())
            if not isinstance(symbol_table, dict):
                raise ValueError("Symbol table is not a valid dictionary")
            
            # Parse program length
            program_length = int(content[2].strip())
            
            return machine_code, symbol_table, program_length
        except Exception as e:
            print(f"Error reading object file {filename}: {e}")
            sys.exit(1)

    def allocate_memory(self, programs: List[Tuple[str, int]]) -> None:
        """
        Allocate memory for each program based on their base addresses.
        programs: List of (filename, base_address) tuples
        """
        current_address = 0
        for prog_id, (filename, base_addr) in enumerate(programs, 1):
            _, _, length = self.read_object_file(filename)
            
            if base_addr == -1:  # Auto-allocate
                base_addr = current_address
            
            self.base_addresses[prog_id] = base_addr
            self.program_lengths[prog_id] = length
            current_address = base_addr + length

    def collect_symbols(self, programs: List[Tuple[str, int]]) -> None:
        """
        Collect all symbols from all programs and build global symbol table.
        Handle conflicts.
        """
        for prog_id, (filename, _) in enumerate(programs, 1):
            _, symbol_table, _ = self.read_object_file(filename)
            base_addr = self.base_addresses[prog_id]
            
            # Add symbols to global table with relocation
            for symbol, value in symbol_table.items():
                relocated_value = value + base_addr
                if symbol in self.global_symbol_table:
                    print(f"Error: Symbol '{symbol}' multiply defined")
                    sys.exit(1)
                self.global_symbol_table[symbol] = relocated_value

    def link(self, programs: List[Tuple[str, int]], output_file: str) -> None:
        """
        Perform the linking process.
        programs: List of (filename, base_address) tuples
        output_file: Name of the output file
        """
        self.allocate_memory(programs)
        self.collect_symbols(programs)

        final_code = []
        
        for prog_id, (filename, _) in enumerate(programs, 1):
            machine_code, _, _ = self.read_object_file(filename)
            base_addr = self.base_addresses[prog_id]
            
            # Relocate machine code
            for instruction in machine_code:
                if "OFFSET" in instruction:
                    offset = int(instruction.split("OFFSET")[1].strip())
                    relocated_offset = offset + base_addr
                    instruction = instruction.replace(f"OFFSET {offset}", str(relocated_offset))
                
                final_code.append(instruction)
        
        # Write the linked code to the output file
        with open(output_file, "w") as f:
            for instruction in final_code:
                f.write(instruction + "\n")
        
        print(f"Linking complete. Output written to {output_file}")

# Example usage
def main():
    linker = Linker()
    
    # Get input programs and their base addresses
    print("Enter number of programs to link:")
    num_programs = int(input())
    
    programs = []
    for i in range(num_programs):
        print(f"\nProgram {i+1}:")
        filename = input("Enter object file name: ")
        base_addr = int(input("Enter base address (-1 for auto-allocation): "))
        programs.append((filename, base_addr))
    
    output_file = input("\nEnter output file name: ")
    
    # Perform linking
    linker.link(programs, output_file)
    print(f"\nLinking complete. Output written to {output_file}")

if __name__ == "__main__":
    main()
