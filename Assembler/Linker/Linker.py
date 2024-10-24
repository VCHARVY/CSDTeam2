import sys
from typing import Dict, List, Tuple

class Linker:
    def __init__(self):
        self.global_symbol_table: Dict[str, int] = {}
        self.external_references: Dict[str, List[Tuple[int, int]]] = {}  # symbol -> [(program_id, address)]
        self.base_addresses: Dict[int, int] = {}
        self.program_lengths: Dict[int, int] = {}
        
    def read_object_file(self, filename: str) -> Tuple[List[str], Dict[str, int], List[str], int]:
        """
        Read an object file and return its components.
        Expected format:
        - Machine code (hex or binary)
        - Symbol table
        - External references
        - Program length
        """
        try:
            with open(filename, 'r') as f:
                content = f.read().strip().split('#')
                
            code = content[0].strip().split('\n')
            
            # Parse symbol table (format: symbol:value)
            symbol_table = {}
            for line in content[1].strip().split('\n'):
                if line:
                    symbol, value = line.split(':')
                    symbol_table[symbol.strip()] = int(value.strip())
                    
            # Parse external references
            externals = content[2].strip().split('\n') if len(content) > 2 else []
            
            # Get program length
            length = int(content[3].strip()) if len(content) > 3 else len(code)
            
            return code, symbol_table, externals, length
            
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
            _, _, _, length = self.read_object_file(filename)
            
            if base_addr == -1:  # Auto-allocate
                base_addr = current_address
                
            self.base_addresses[prog_id] = base_addr
            self.program_lengths[prog_id] = length
            current_address = base_addr + length
    
    def collect_symbols(self, programs: List[Tuple[str, int]]) -> None:
        """
        Collect all symbols from all programs and build global symbol table.
        Handle conflicts and external references.
        """
        for prog_id, (filename, _) in enumerate(programs, 1):
            _, symbol_table, externals, _ = self.read_object_file(filename)
            
            # Add symbols to global table with relocated addresses
            base_addr = self.base_addresses[prog_id]
            for symbol, value in symbol_table.items():
                relocated_value = value + base_addr
                
                if symbol in self.global_symbol_table:
                    print(f"Error: Symbol '{symbol}' multiply defined")
                    sys.exit(1)
                    
                self.global_symbol_table[symbol] = relocated_value
            
            # Record external references
            for ext in externals:
                if ext not in self.external_references:
                    self.external_references[ext] = []
                self.external_references[ext].append((prog_id, 0))  # Address to be filled later
    
    def link(self, programs: List[Tuple[str, int]], output_file: str) -> None:
        """
        Main linking process.
        programs: List of (filename, base_address) tuples
        output_file: Name of the output executable
        """
        # Step 1: Allocate memory
        #self.allocate_memory(programs)
        
        # Step 2: Collect all symbols
        #self.collect_symbols(programs)
        
        # Step 3: Resolve external references and relocate addresses
        final_code = []
        
        for prog_id, (filename, _) in enumerate(programs, 1):
            code, symbol_table, externals, _ = self.read_object_file(filename)
            base_addr = self.base_addresses[prog_id]
            
            # Process each instruction
            for instruction in code:
                # Handle relocation
                if 'OFFSET' in instruction:
                    # Extract offset and add base address
                    offset = int(instruction.split('OFFSET')[1].strip())
                    relocated_offset = offset + base_addr
                    instruction = instruction.replace(f"OFFSET {offset}", str(relocated_offset))
                
                # Handle external references
                for ext in externals:
                    if ext in instruction and ext in self.global_symbol_table:
                        instruction = instruction.replace(ext, str(self.global_symbol_table[ext]))
                
                final_code.append(instruction)
        
        # Write final executable
        with open(output_file, 'w') as f:
            for instruction in final_code:
                f.write(instruction + '\n')

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