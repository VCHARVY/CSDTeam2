from typing import List, Dict, Union
from Parser import Label, Instruction
from Tokenize import tokenize
import Parser
from opcode_table import opcode_table
import Semantic_Analyzer.Semantic_Analyzer
from Semantic_Analyzer.Semantic_Analyzer import SemanticAnalyzer, SemanticError
class CodeGenerator:
    def __init__(self, ast: List[Union[Label, Instruction]], symbol_table: Dict[str, int]):
        self.ast=ast
        self.symbol_table=symbol_table
        self.machine_code=[]
    def generate_machine_code(self):
        for node in self.ast:
            if isinstance(node, Instruction):
                binary_instruction = self.encode_instruction(node)
                self.machine_code.append(binary_instruction)
        return self.machine_code
    
    def encode_instruction(self, instruction:Instruction)->int:
        opcode=opcode_table.get(instruction.mnemonic.upper())
        # print(instruction.mnemonic)
        if opcode is None:
            raise SemanticError(f"Unsupported mnemonic '{instruction.mnemonic}'")
        operand_count = len(instruction.operands)
        mnemonic = instruction.mnemonic.lower()
        #Encode operands assuming all instructions are 4 bytes long
        # Encode for arithmetic/logic operations
        if mnemonic in {'add', 'sub', 'rsb', 'adc', 'sbc', 'rsc', 'and', 'orr', 'eor', 'bic'}:
            #operand_count==3
            rd = self.encode_register(instruction.operands[0])
            rn = self.encode_register(instruction.operands[1])
            # Check if the third operand is a register or immediate
            if instruction.operands[2].startswith('#'):
                imm = self.encode_immediate(instruction.operands[2]) 
                # Return encoded instruction: opcode | rd | rn | imm flag (1)
                return (opcode << 24) | (rd << 16) | (rn << 8) | imm | (1 << 20)  # Immediate flag bit set to 1
            else:
                rm = self.encode_register(instruction.operands[2])  # Second source register
                # Return encoded instruction: opcode | rd | rn | rm
                return (opcode << 24) | (rd << 16) | (rn << 8) | rm
        # Encode for move and comparison instructions
        elif mnemonic in {'mov', 'mvn', 'cmp', 'cmn', 'tst', 'teq'}:
            #operand_count==2
            rd = self.encode_register(instruction.operands[0])  # Destination register for mov,mvn and source register for remaining
        
            # Check if the second operand is a register or immediate
            if instruction.operands[1].startswith('#'):
                imm = self.encode_immediate(instruction.operands[1])
                return (opcode << 24) | (rd << 16) | imm | (1 << 20)  # Immediate flag bit set to 1
            else:
                rm = self.encode_register(instruction.operands[1])  # Second source register
                return (opcode << 24) | (rd << 16) | rm
        elif mnemonic in 'mul': #operand_count == 3
            rd = self.encode_register(instruction.operands[0])
            rm = self.encode_register(instruction.operands[1])
            rs = self.encode_register(instruction.operands[2])
            return (opcode << 24) | (rd << 16) | (rm << 8) | rs
            
        elif mnemonic == 'mla': #operand_count == 4
            rd = self.encode_register(instruction.operands[0])
            rm = self.encode_register(instruction.operands[1])
            rs = self.encode_register(instruction.operands[2])
            ra = self.encode_register(instruction.operands[3])
            return (opcode << 24) | (rd << 16) | (rm << 8) | (rs << 4) | ra
        # Encode for long multiplication instructions
        elif mnemonic in {'umull', 'umlal', 'smull', 'smlal'}:
            #operand_count == 4:
            rd_hi = self.encode_register(instruction.operands[0])
            rd_lo = self.encode_register(instruction.operands[1])
            rm = self.encode_register(instruction.operands[2])
            rs = self.encode_register(instruction.operands[3])
            return (opcode << 24) | (rd_hi << 16) | (rd_lo << 12) | (rm << 8) | rs
        else:
            raise SemanticError(f"Incorect number of operands for '{instruction.mnemonic}'")
        
    def encode_register(self, reg: str)-> int:
        #Assuming registers are named r0-r15
        if reg.startswith('r') and reg[1:].isdigit():
            reg_num = int(reg[1:])
            if 0<=reg_num<16:
                return reg_num
        raise SemanticError(f"Invalid register '{reg}'")

    def encode_immediate(self, imm: str) -> int:
        if imm.startswith('#'):
            try:
                return int(imm[1:],0)
            except ValueError:
                raise SemanticError(f"Invalid immediate value '{imm}'")
        raise SemanticError(f"Invalid immediate format '{imm}'")
    

if __name__ == "__main__":
    input_code = """
        add r1, r2, r3
        sub r5, r6, r8
        cmp r0, #10
    """

    tokens = tokenize(input_code)
    parser = Parser.Parser(tokens)
    ast = parser.parse()

    analyzer = SemanticAnalyzer(ast)
    errors = analyzer.analyze()
    
    symbol_table=analyzer.build_symbol_table()

    if errors:
        for error in errors:
            print(error)
    else:
        print("No semantic errors found.")
        code_generator = CodeGenerator(ast, symbol_table)
        machine_code = code_generator.generate_machine_code()

        # Output the machine code in hex format
        for code in machine_code:
            print(f"{code:08b}")






        