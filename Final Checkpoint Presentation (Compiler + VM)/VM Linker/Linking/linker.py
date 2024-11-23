import re
import sys

class VMLinker:
    def __init__(self, file1, file2):
        self.file1 = file1
        self.file2 = file2
        self.global_symbols = {}
        self.function_table = {}
        
    def parse_symbols(self, file_path):
        symbols = {
            'globals': {},
            'functions': {}
        }
        
        with open(file_path, 'r') as f:
            lines = f.readlines()
        
        for line in lines:
            # Remove comments and whitespace
            line = line.split('//')[0].strip()
            
            # Detect function declarations
            func_match = re.match(r'function\s+(\w+)', line)
            if func_match:
                func_name = func_match.group(1)
                symbols['functions'][func_name] = file_path
            
            # Detect global variable declarations (simplified)
            global_match = re.match(r'push\s+static\s+(\d+)', line)
            if global_match:
                var_index = global_match.group(1)
                symbols['globals'][var_index] = file_path
        
        return symbols
    
    def validate_cross_file_references(self, file_contents):
        for line in file_contents:
            line = line.split('//')[0].strip()
            
            # Check for function calls
            call_match = re.match(r'call\s+(\w+)', line)
            if call_match:
                func_name = call_match.group(1)
                if func_name not in self.function_table:
                    raise ValueError(f"Undefined function reference: {func_name}")
            
            # Check for static variable references
            static_match = re.match(r'push\s+static\s+(\d+)', line)
            if static_match:
                var_index = static_match.group(1)
                if var_index not in self.global_symbols:
                    raise ValueError(f"Undefined static variable: {var_index}")
    
    def link(self):
        # Parse symbols from both files
        symbols1 = self.parse_symbols(self.file1)
        symbols2 = self.parse_symbols(self.file2)
        
        # Merge symbol tables
        self.function_table.update(symbols1['functions'])
        self.function_table.update(symbols2['functions'])
        
        self.global_symbols.update(symbols1['globals'])
        self.global_symbols.update(symbols2['globals'])
        
        # Read both files
        with open(self.file1, 'r') as f1, open(self.file2, 'r') as f2:
            file1_contents = f1.readlines()
            file2_contents = f2.readlines()
        
        # Validate cross-file references
        self.validate_cross_file_references(file1_contents)
        self.validate_cross_file_references(file2_contents)
        
        # Combine files (you can add more sophisticated merging logic)
        linked_code = file1_contents + file2_contents
        
        return linked_code
    
    def write_linked_file(self, output_file):
        linked_code = self.link()
        
        with open(output_file, 'w') as f:
            f.writelines(linked_code)

def main():
    if len(sys.argv) != 4:
        print("Usage: python vm_linker.py <file1.vm> <file2.vm> <output.vm>")
        sys.exit(1)
    
    file1 = sys.argv[1]
    file2 = sys.argv[2]
    output_file = sys.argv[3]
    
    linker = VMLinker(file1, file2)
    
    try:
        linker.write_linked_file(output_file)
        print(f"Successfully linked {file1} and {file2} to {output_file}")
    except ValueError as e:
        print(f"Linking error: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()