
from dataclasses import dataclass
from typing import List, Dict, Union, Optional
from enum import Enum

class SymbolType(Enum):
    LABEL = "LABEL"          # For branch targets
    VARIABLE = "VARIABLE"    # For memory variables
    CONSTANT = "CONSTANT"    # For immediate values
    REGISTER = "REGISTER"    # For register usage
    MEMORY = "MEMORY"        # For memory access

class DataType(Enum):
    WORD = 4      # 32-bit
    HALFWORD = 2  # 16-bit
    BYTE = 1      # 8-bit
    ADDRESS = 4   # Address/pointer

@dataclass
class Label:
    label: str

@dataclass
class Instruction:
    instruction: str
    operands: List[str]

class SymbolTableGenerator:
    def __init__(self):
        self.symbol_table: Dict[str, Dict] = {}
        self.current_address = 0
        self.INSTRUCTION_SIZE = 4
        self.stack_offset = 0
        self.register_usage = {}

    def analyze_instruction(self, instr: Instruction):
        """Analyze instruction for symbol information."""
        op = instr.instruction.lower()
        operands = instr.operands

        # Track register usage
        for operand in operands:
            if operand.startswith('r') and operand[1:].isdigit():
                reg_num = int(operand[1:])
                if reg_num not in self.register_usage:
                    self.register_usage[reg_num] = {
                        'first_use': self.current_address,
                        'read_count': 0,
                        'write_count': 0
                    }
                
                # Track read/write usage
                if op in ['mov', 'ldr', 'add', 'sub'] and operand == operands[0]:
                    self.register_usage[reg_num]['write_count'] += 1
                else:
                    self.register_usage[reg_num]['read_count'] += 1

        # Analyze memory operations
        if op in ['ldr', 'str']:
            self.analyze_memory_operation(op, operands)

        # Track constants
        for operand in operands:
            if operand.startswith('#'):
                self.add_constant(operand[1:])

    def analyze_memory_operation(self, op: str, operands: List[str]):
        """Analyze memory access operations."""
        if '[' in operands:
            # Memory access found
            base_reg = None
            offset = 0
            is_pre_indexed = False
            is_post_indexed = False

            # Find base register and offset
            for i, op in enumerate(operands):
                if op == '[':
                    base_reg = operands[i+1]
                elif op.startswith('#'):
                    offset = int(op[1:])
                elif op == '!':
                    is_pre_indexed = True

            if base_reg:
                mem_access = {
                    'base_register': base_reg,
                    'offset': offset,
                    'pre_indexed': is_pre_indexed,
                    'post_indexed': is_post_indexed,
                    'address': self.current_address
                }
                self.add_memory_access(mem_access)

    def add_constant(self, value: str):
        """Add constant to symbol table."""
        const_name = f"const_{value}"
        if const_name not in self.symbol_table:
            try:
                int_val = int(value)
                size = 1 if -128 <= int_val <= 127 else (2 if -32768 <= int_val <= 32767 else 4)
            except ValueError:
                size = 4  # Default to word size
                
            self.symbol_table[const_name] = {
                'type': SymbolType.CONSTANT,
                'value': value,
                'size': size,
                'first_use': self.current_address,
                'uses': [self.current_address]
            }
        else:
            self.symbol_table[const_name]['uses'].append(self.current_address)

    def add_memory_access(self, mem_access: Dict):
        """Add memory access information to symbol table."""
        access_name = f"mem_{mem_access['base_register']}_{mem_access['offset']}"
        if access_name not in self.symbol_table:
            self.symbol_table[access_name] = {
                'type': SymbolType.MEMORY,
                'base_register': mem_access['base_register'],
                'offset': mem_access['offset'],
                'pre_indexed': mem_access['pre_indexed'],
                'post_indexed': mem_access['post_indexed'],
                'first_use': mem_access['address'],
                'accesses': [mem_access['address']]
            }
        else:
            self.symbol_table[access_name]['accesses'].append(mem_access['address'])

    def first_pass(self, ast: List[Union[Label, Instruction]]):
        """First pass to build comprehensive symbol table."""
        for node in ast:
            if isinstance(node, Label):
                self.symbol_table[node.label] = {
                    'type': SymbolType.LABEL,
                    'address': self.current_address,
                    'references': [],
                    'size': 0  # Labels don't have size
                }
            elif isinstance(node, Instruction):
                # Analyze instruction for symbols
                self.analyze_instruction(node)
                
                # Handle branch references
                if node.instruction.lower().startswith('b'):
                    target_label = node.operands[-1]
                    if target_label in self.symbol_table:
                        self.symbol_table[target_label]['references'].append(self.current_address)
                    else:
                        # Forward reference
                        self.symbol_table[target_label] = {
                            'type': SymbolType.LABEL,
                            'address': None,
                            'references': [self.current_address],
                            'size': 0
                        }
                
                self.current_address += self.INSTRUCTION_SIZE

    def print_symbol_table(self):
        """Print comprehensive symbol table."""
        print("\n=== Comprehensive Symbol Table ===")
        
        # Print Labels
        print("\n--- Labels ---")
        print(f"{'Name':<15} {'Address':<10} {'References':<30}")
        print("-" * 55)
        for name, info in self.symbol_table.items():
            if info.get('type') == SymbolType.LABEL:
                addr = f"0x{info['address']:04x}" if info['address'] is not None else "UNDEFINED"
                refs = ', '.join(f"0x{ref:04x}" for ref in info['references'])
                print(f"{name:<15} {addr:<10} {refs:<30}")

        # Print Constants
        print("\n--- Constants ---")
        print(f"{'Name':<15} {'Value':<10} {'Size':<8} {'Uses':<30}")
        print("-" * 63)
        for name, info in self.symbol_table.items():
            if info.get('type') == SymbolType.CONSTANT:
                uses = ', '.join(f"0x{use:04x}" for use in info['uses'])
                print(f"{name:<15} {info['value']:<10} {info['size']:<8} {uses:<30}")

        # Print Memory Accesses
        print("\n--- Memory Accesses ---")
        print(f"{'Name':<20} {'Base Reg':<10} {'Offset':<8} {'Index Type':<15} {'Accesses':<30}")
        print("-" * 83)
        for name, info in self.symbol_table.items():
            if info.get('type') == SymbolType.MEMORY:
                index_type = "Pre-indexed" if info['pre_indexed'] else ("Post-indexed" if info['post_indexed'] else "Offset")
                accesses = ', '.join(f"0x{acc:04x}" for acc in info['accesses'])
                print(f"{name:<20} {info['base_register']:<10} {info['offset']:<8} {index_type:<15} {accesses:<30}")

        # Print Register Usage
        print("\n--- Register Usage ---")
        print(f"{'Register':<10} {'First Use':<12} {'Read Count':<12} {'Write Count':<12}")
        print("-" * 46)
        for reg_num, info in sorted(self.register_usage.items()):
            print(f"R{reg_num:<9} 0x{info['first_use']:04x}    {info['read_count']:<12} {info['write_count']:<12}")

def process_assembly(ast: List[Union[Label, Instruction]]):
    generator = SymbolTableGenerator()
    generator.first_pass(ast)
    return generator

# Test the enhanced symbol table generator
def main():
    test_ast = [
        Instruction("mov", ["r0", "#5"]),
        Instruction("add", ["r1", "r2", "r3"]),
        Instruction("bne", ["label1"]),
        Label("label1"),
        Instruction("ldr", ["r4", "[", "r5", "]"]),
        Instruction("cmp", ["r0", "#10"]),
        Instruction("beq", ["exit"]),
        Instruction("str", ["r1", "[", "sp", "#-4", "]", "!"]),
        Label("exit")
    ]

    try:
        generator = process_assembly(test_ast)
        generator.print_symbol_table()
    except ValueError as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()