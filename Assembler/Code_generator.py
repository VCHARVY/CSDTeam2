from typing import List, Dict, Union
from opcode_table import opcode_table
from Parser import Label, Instruction

class CodeGenerator:
    def __init__(self, ast: List[Union[Instruction, Label]], symbol_table: Dict[str, int]):
        self.ast = ast
        self.symbol_table = symbol_table
        self.machine_code = []

    def generate_machine_code(self) -> List[int]:
        """Generate machine code for the entire AST."""
        for node in self.ast:
            if isinstance(node, Instruction):
                binary_instruction = self.encode_instruction(node)
                self.machine_code.append(binary_instruction)
        return self.machine_code

    def encode_instruction(self, instruction: Instruction) -> int:
        """Encode a single instruction into its binary representation."""
        mnemonic = instruction.mnemonic.upper()
        condition = instruction.condition.upper() if instruction.condition else ''
        full_mnemonic = f"{mnemonic}{condition}"
        
        if full_mnemonic not in opcode_table:
            raise ValueError(f"Unsupported mnemonic: {full_mnemonic}")

        opcode = opcode_table[full_mnemonic]
        operand_count = len(instruction.operands)
        
        # Initialize instruction fields
        itype = opcode >> 6  # Extract instruction type (bits 6-7)
        u_ctrl = opcode & 0x3F  # Extract control signals (bits 0-5)
        rd_addr = 0
        rm_addr = 0
        rn_addr = 0  # Added for third register in 3-operand instructions
        is_imm = 0
        value = 0

        # Branch instructions (B, BL, BLX, BX)
        if mnemonic in ['B', 'BL', 'BLX', 'BX']:
            target = instruction.operands[0]
            if target.startswith('#'):
                # Direct immediate value
                is_imm = 1
                value = self.encode_immediate(target)
            else:
                # Label resolution
                if target in self.symbol_table:
                    # Use the address from symbol table
                    value = self.symbol_table[target] & 0x7FFF
                    is_imm = 1
                elif target.startswith('r'):
                    # Register-based branch
                    rm_addr = self.encode_register(target)
                else:
                    raise ValueError(f"Invalid branch target: {target}")

        # System instructions (SWI, CLZ, MSR, MRS)
        elif mnemonic in ['SWI', 'CLZ', 'MSR', 'MRS']:
            if instruction.operands[0].startswith('#'):
                is_imm = 1
                value = self.encode_immediate(instruction.operands[0])
            else:
                rd_addr = self.encode_register(instruction.operands[0])

        # Compare instructions (CMP, CMN, TEQ, TST)
        elif mnemonic in ['CMP', 'CMN', 'TEQ', 'TST']:
            rd_addr = self.encode_register(instruction.operands[0])
            if instruction.operands[1].startswith('#'):
                is_imm = 1
                value = self.encode_immediate(instruction.operands[1])
            else:
                rm_addr = self.encode_register(instruction.operands[1])

        # Data movement (MOV, MVN)
        elif mnemonic in ['MOV', 'MVN']:
            rd_addr = self.encode_register(instruction.operands[0])
            if instruction.operands[1].startswith('#'):
                is_imm = 1
                value = self.encode_immediate(instruction.operands[1])
            else:
                rm_addr = self.encode_register(instruction.operands[1])

        # Memory operations (LDR, STR)
        elif mnemonic in ['LDR', 'STR']:
            rd_addr = self.encode_register(instruction.operands[0])
            if instruction.operands[1].startswith('#'):
                is_imm = 1
                value = self.encode_immediate(instruction.operands[1])
            else:
                rm_addr = self.encode_register(instruction.operands[1])

        # Basic arithmetic/logic (ADD, SUB, AND, ORR, etc.)
        else:
            if operand_count == 2:
                rd_addr = self.encode_register(instruction.operands[0])
                if instruction.operands[1].startswith('#'):
                    is_imm = 1
                    value = self.encode_immediate(instruction.operands[1])
                else:
                    rm_addr = self.encode_register(instruction.operands[1])
            elif operand_count == 3:
                rd_addr = self.encode_register(instruction.operands[0])
                rn_addr = self.encode_register(instruction.operands[1])
                if instruction.operands[2].startswith('#'):
                    is_imm = 1
                    value = self.encode_immediate(instruction.operands[2])
                else:
                    rm_addr = self.encode_register(instruction.operands[2])
            else:
                raise ValueError(f"{mnemonic} instruction expects 2 or 3 operands")
            
        # Combine all fields into final instruction
        return (
            (itype << 30) |           # bits [30:31] for instruction type
            (u_ctrl << 24) |          # bits [24:29] for control signals
            (rd_addr << 20) |         # bits [20:23] for rd register address
            (rm_addr << 16) |         # bits [16:19] for rm register address
            (rn_addr << 12) |         # bits [12:15] for rn register address (added)
            (is_imm << 15) |          # bit [15] indicates if it's immediate
            (value & 0x7FFF)           # bits [0:14] for immediate value or address
        )

    def encode_register(self, reg: str) -> int:
        """Encode a register name to its binary representation."""
        if reg.startswith('r') and reg[1:].isdigit():
            reg_num = int(reg[1:])
            if 0 <= reg_num < 16:
                return reg_num
        raise ValueError(f"Invalid register: {reg}")

    def encode_immediate(self, imm: str) -> int:
        """Encode an immediate value to its binary representation."""
        if imm.startswith('#'):
            try:
                value = int(imm[1:], 0)
                if 0 <= value < 0x8000:  # 15-bit immediate value
                    return value
                raise ValueError(f"Immediate value out of range: {imm}")
            except ValueError:
                raise ValueError(f"Invalid immediate value: {imm}")
        raise ValueError(f"Invalid immediate format: {imm}")

    @staticmethod
    def format_binary(num: int, width: int = 32) -> str:
        """Format a number as a binary string with given width."""
        return format(num, f'0{width}b')

# Example usage
if __name__ == "__main__":
    # Example AST with 3-operand and label instructions
    test_program = [
        Instruction("ADD", "", ["r0", "r1", "#5"]),
        Instruction("MOV", "", ["r4", "#10"]),
        Instruction("CMP", "", ["r1", "r2"]),
        Instruction("B", "", ["exit"]),
        Label("exit")
    ]
    
    symbol_table = {'exit': 0x100}
    code_gen = CodeGenerator(test_program, symbol_table)
    machine_code = code_gen.generate_machine_code()
    
    print("Generated Machine Code:")
    for i, code in enumerate(machine_code):
        print(f"Instruction {i}: {CodeGenerator.format_binary(code)}")
        # Print instruction breakdown
        itype = (code >> 30) & 0x3
        u_ctrl = (code >> 24) & 0x3F
        rd = (code >> 20) & 0xF
        rm = (code >> 16) & 0xF
        rn = (code >> 12) & 0xF
        is_imm = (code >> 15) & 0x1
        value = code & 0x7FFF
        print(f"  Type: {itype:02b}, Control: {u_ctrl:06b}, Rd: {rd:04b}, Rm: {rm:04b}, Rn: {rn:04b}, Imm: {is_imm}, Value: {value:015b}")