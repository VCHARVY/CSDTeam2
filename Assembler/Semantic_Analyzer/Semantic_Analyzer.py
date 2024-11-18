'''
            SEMANTIC ANALYSIS

    Things to check:

Instruction Validation: Ensure that each instruction is valid for the target ARM architecture.
Check that the operands are appropriate for each instruction (e.g., mov can't have more than two operands).

- Register Usage: Verify that all referenced registers are valid for the target architecture.
Check for proper usage of special registers (e.g., sp, lr, pc).

- Immediate Value Range: Ensure that immediate values are within the allowed range for each instruction.
For example, many ARM instructions only allow 8-bit immediate values that can be rotated.

Memory Access: Validate memory access instructions (ldr, str) for proper syntax and addressing modes.
Check that memory alignments are respected where necessary, does not go out of bounds

- Label References: Ensure all referenced labels are defined somewhere in the code.
Check that branch distances are within the allowed range for the specific branch instruction.

- Type mismatches: Attempting to perform operations on values of incompatible types (e.g., adding an integer to a floating-point number).

- Directive Processing: If your assembly language includes directives (e.g., .data, .text), ensure they are used correctly.


    Main Tasks:
Symbol table construction: The assembler builds a symbol table to store information about labels, variables, and other identifiers used in the code.

Label resolution: The assembler resolves references to labels by looking them up in the symbol table and replacing them with their corresponding addresses.

Address calculation: The assembler calculates the addresses of instructions, data, and other code elements based on the layout of the memory space.


    # Implement later
Optimization Opportunities: While not strictly part of semantic analysis, you might identify potential optimizations at this stage.
Architectural Constraints: Check for any architecture-specific rules or constraints (e.g., certain instruction combinations that are not allowed).
Macro Expansion: If your assembler supports macros, expand them and validate the resulting code.
Condition Codes: Verify that condition codes are used correctly with instructions that support them.
Syntax for commas (being removed by parser. Check it there)
'''
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from typing import List, Dict, Union
from Parser import Label, Instruction, Parser
from Tokenize import tokenize


class SemanticError(Exception):
    pass

class SemanticAnalyzer:
    def __init__(self, ast: List[Union[Label, Instruction]]):
        self.ast = ast
        self.symbol_table: Dict[str, int] = {}
        self.current_address = 0
        self.errors: List[str] = []
        self.data_section = False
        self.global_symbols = set()
        self.hidden_symbols = set()
        self.external_symbols = set()
        self.current_section = 'text'
        self.current_function = None
        self.no_code_section = False

    def analyze(self):
        self.build_symbol_table()
        self.validate_instructions()
        return self.errors

    def build_symbol_table(self):
        for node in self.ast:
            #print(node)
            if isinstance(node, Label):
                if node.name in self.symbol_table:
                    self.errors.append(f"Error: Label '{node.name}' is defined multiple times")
                else:
                    self.symbol_table[node.name] = self.current_address
            elif isinstance(node, Instruction):
                self.current_address += 4  # Assuming all instructions are 4 bytes long   

        print(self.symbol_table)

    def validate_instructions(self):
        for node in self.ast:
            if isinstance(node, Instruction):
                self.validate_instruction(node)

    def validate_instruction(self, instruction: Instruction):
        self.validate_mnemonic(instruction)
        self.validate_operands(instruction)                               
        # self.validate_register_usage(instruction)
        # self.validate_immediate_values(instruction)
        self.validate_memory_access(instruction)                            ###check
        self.validate_label_references(instruction)
        self.validate_type_mismatch(instruction)
        self.process_directive(instruction)

    def validate_mnemonic(self, instruction: Instruction):
        valid_mnemonics = {
            'add', 'sub', 'rsb', 'adc', 'sbc', 'rsc', 'and', 'orr', 'eor', 'bic', 'mov', 'mvn',
            'mul', 'mla', 'umull', 'umlal', 'smull', 'smlal',
            'cmp', 'cmn',
            'ldr', 'str', 'ldrb', 'strb', 'ldrh', 'strh', 'ldm', 'stm',
            'b', 'bl', 'bx', 'blx',
            'bal',  'beq',  'bne',  'bpl',  'bmi',  'bcc',  'blo',  'bcs',  'bhs',  'bvc',  'bcs',  'bgt','bge','blt','ble', 'bhi','bls',
            'lsl', 'lsr', 'asr', 'ror', 'rrx',
            'mrs', 'msr',
            'swi', 'svc', 'bkpt',
        }
        if instruction.mnemonic not in valid_mnemonics:
            self.errors.append(f"Error: Invalid mnemonic '{instruction.mnemonic}'")

    def is_valid_register(self, op):
            return op in {f'r{i}' for i in range(16)} | {'sp', 'lr', 'pc'}
    
    def is_valid_immediate(self, op):
        if not op.startswith('#'):
            return False
        try:
            value = int(op[1:], 0)  # 0 as base allows for hex and binary literals
            return -2**31 <= value < 2**31
        except ValueError:
            return False

    def validate_operands(self, instruction: Instruction):
        operand_count = len(instruction.operands)
        mnemonic = instruction.mnemonic.lower()

        def is_valid_shifted_register(op):
            parts = op.split()
            if len(parts) != 3 or parts[1] not in {'lsl', 'lsr', 'asr', 'ror'}:
                return False
            return self.is_valid_register(parts[0]) and self.is_valid_immediate(parts[2])

        # Instruction-specific checks
        if mnemonic in {'mov', 'mvn', 'cmp', 'cmn', 'tst', 'teq'}:
            if operand_count != 2:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 2 operands")
            elif not self.is_valid_register(instruction.operands[0]):
                self.errors.append(f"Error: Invalid destination register in '{mnemonic}'")
            elif not (self.is_valid_register(instruction.operands[1]) or 
                    self.is_valid_immediate(instruction.operands[1]) or 
                    is_valid_shifted_register(instruction.operands[1])):
                self.errors.append(f"Error: Invalid source operand in '{mnemonic}'")

        elif mnemonic in {'add', 'sub', 'rsb', 'adc', 'sbc', 'rsc', 'and'}:             #'orr', 'eor', 'bic'
            if operand_count != 3:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 3 operands")
            elif not self.is_valid_register(instruction.operands[0]):
                self.errors.append(f"Error: Invalid destination register in '{mnemonic}'")
            elif not self.is_valid_register(instruction.operands[1]):
                self.errors.append(f"Error: Invalid first source register in '{mnemonic}'")
            elif not (self.is_valid_register(instruction.operands[2]) or 
                    self.is_valid_immediate(instruction.operands[2]) or 
                    is_valid_shifted_register(instruction.operands[2])):
                self.errors.append(f"Error: Invalid second source operand in '{mnemonic}'")

        elif mnemonic in {'mul', 'mla'}:
            if operand_count not in {3, 4}:
                self.errors.append(f"Error: '{mnemonic}' instruction requires 3 or 4 operands")
            elif not all(self.is_valid_register(op) for op in instruction.operands):
                self.errors.append(f"Error: Invalid register in '{mnemonic}'")

        elif mnemonic in {'umull'}:         #, 'umlal', 'smull', 'smlal'
            if operand_count != 4:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 4 operands")
            elif not all(self.is_valid_register(op) for op in instruction.operands):
                self.errors.append(f"Error: Invalid register in '{mnemonic}'")

        elif mnemonic in {'ldr', 'str', 'ldrb', 'strb', 'ldrh', 'strh'}:
            if operand_count < 3:  # Need at least: register, '[', and base register
                self.errors.append(f"Error: '{mnemonic}' instruction requires at least 3 operands")
                return

            if not self.is_valid_register(instruction.operands[0]):
                self.errors.append(f"Error: Invalid destination register '{instruction.operands[0]}' in {mnemonic}")
                return

            if instruction.operands[1] != '[':
                self.errors.append(f"Error: Expected '[' in {mnemonic} addressing mode")
                return

            # Find the closing bracket and exclamation mark
            closing_bracket_index = None
            has_exclamation = False
            for i, op in enumerate(instruction.operands[2:], start=2):
                if op == ']':
                    closing_bracket_index = i
                    if i+1 < operand_count:
                        if instruction.operands[i+1] == '!':
                            has_exclamation = True
                        else:
                            self.errors.append(f"Error: Unexpected operands after '!' in {mnemonic}")
                    break

            if closing_bracket_index is None:
                self.errors.append(f"Error: Missing closing ']' in {mnemonic} addressing mode")
                return

            # Validate the addressing mode
            address_operands = instruction.operands[2:closing_bracket_index]
            if not self.is_valid_address_operands(address_operands):
                self.errors.append(f"Error: Invalid addressing mode in {mnemonic}")

            # Check for post-indexed addressing or writeback
            # if not has_exclamation:
            #     post_index_operands = instruction.operands[closing_bracket_index+1:]
            #     print("post ]")
            #     print(post_index_operands)
            #     if not self.is_valid_post_index_operands(post_index_operands):
            #         self.errors.append(f"Error: Invalid post-indexed addressing in {mnemonic}")


        elif mnemonic in {'ldm', 'stm'}:
            if operand_count < 2:
                self.errors.append(f"Error: '{mnemonic}' instruction requires at least 2 operands")
            elif not self.is_valid_register(instruction.operands[0]):
                self.errors.append(f"Error: Invalid base register in '{mnemonic}'")
            elif not all(self.is_valid_register(op) for op in instruction.operands[1:]):
                self.errors.append(f"Error: Invalid register list in '{mnemonic}'")

        elif mnemonic in {'b', 'bl', 'bx', 'blx', 'bal', 'beq', 'bne', 'bpl', 'bmi', 'bcc', 'blo', 'bcs', 'bhs', 'bvc', 'bvs', 'bgt', 'bge', 'blt', 'ble', 'bhi', 'bls'}:
            if operand_count != 1:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 1 operand")
            elif mnemonic in {'bx', 'blx'} and not self.is_valid_register(instruction.operands[0]):
                self.errors.append(f"Error: Invalid register in '{mnemonic}'")

        elif mnemonic in {'lsl', 'lsr', 'asr', 'ror'}:
            if operand_count != 3:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 3 operands")
            elif not all(self.is_valid_register(op) for op in instruction.operands[:2]):
                self.errors.append(f"Error: Invalid register in '{mnemonic}'")
            elif not self.is_valid_immediate(instruction.operands[2]):
                self.errors.append(f"Error: Invalid shift amount in '{mnemonic}'")

        elif mnemonic == 'rrx':
            if operand_count != 2:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 2 operands")
            elif not all(self.is_valid_register(op) for op in instruction.operands):
                self.errors.append(f"Error: Invalid register in '{mnemonic}'")

        elif mnemonic in {'mrs', 'msr'}:
            if operand_count != 2:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 2 operands")
            elif mnemonic == 'mrs' and not self.is_valid_register(instruction.operands[0]):
                self.errors.append(f"Error: Invalid destination register in '{mnemonic}'")
            elif mnemonic == 'msr' and instruction.operands[0] not in {'cpsr', 'spsr'}:
                self.errors.append(f"Error: Invalid status register in '{mnemonic}'")

        elif mnemonic in {'swi', 'svc', 'bkpt'}:
            if operand_count != 1:
                self.errors.append(f"Error: '{mnemonic}' instruction requires exactly 1 operand")
            elif not self.is_valid_immediate(instruction.operands[0]):
                self.errors.append(f"Error: Invalid immediate value in '{mnemonic}'")

        else:
            self.errors.append(f"Warning: Unknown instruction '{mnemonic}'. Unable to validate operands.")
            
            
    # def validate_register_usage(self, instruction: Instruction):
    #     valid_registers = {f'r{i}' for i in range(16)} | {'sp', 'lr', 'pc'}
    #     for operand in instruction.operands:
    #         if operand.startswith('r') or operand in {'sp', 'lr', 'pc'}:
    #             if operand not in valid_registers:
    #                 self.errors.append(f"Error: Invalid register '{operand}'")

    # def validate_immediate_values(self, instruction: Instruction):
    #     for operand in instruction.operands:
    #         if operand.startswith('#'):
    #             value = int(operand[1:])                                                    ########## below instruction
    #             if instruction.mnemonic in {'add', 'sub', 'rsb', 'adc', 'sbc', 'rsc', 'and', 'orr', 'eor', 'bic', 'mov', 'mvn'}:         
    #                 if not self.is_valid_immediate(value):
    #                     self.errors.append(f"Error: Immediate value '{operand}' is not a valid ARM immediate")
    #             elif instruction.mnemonic in {'cmp', 'cmn'}:
    #                 if not (-256 <= value <= 255):
    #                     self.errors.append(f"Error: Immediate value '{operand}' out of range for comparison")

    # def is_valid_immediate(self, value):
    #     # Check if the value can be represented as an 8-bit value rotated by an even number of bits
    #     for i in range(0, 32, 2):
    #         rotated = (value << i | value >> (32 - i)) & 0xFFFFFFFF
    #         if rotated < 256:
    #             return True
    #     return False


    def is_valid_address_operands(self, operands):
        if len(operands) == 0:
            return False
        if not self.is_valid_register(operands[0]):
            return False
        if len(operands) == 1:
            return True
        else:
            if len(operands) == 2:
                return self.is_valid_immediate(operands[1]) or self.is_valid_register(operands[1])  # [Rn, #imm] or [Rn, Rm]
            if len(operands) == 3:
                return (self.is_valid_register(operands[1]) and 
                    (operands[2] in {'lsl', 'lsr', 'asr', 'ror'} or self.is_valid_immediate(operands[2])))  # [Rn, Rm, shift] or [Rn, Rm, #imm]
        return False

    def validate_memory_access(self, instruction: Instruction):
        #Call function from mem_val
        return 
    
        #if instruction.mnemonic in {'ldr', 'str', 'ldrb', 'strb', 'ldrh', 'strh'}:
        # if instruction.mnemonic in {'ldr', 'str'}:
        #     if not self.is_aligned(instruction.operands[1], 4):
        #         self.errors.append(f"Warning: Unaligned access in '{instruction.mnemonic}'")
        # elif instruction.mnemonic in {'ldrh', 'strh'}:
        #     if not self.is_aligned(instruction.operands[1], 2):
        #         self.errors.append(f"Warning: Unaligned access in '{instruction.mnemonic}'")

    # def is_aligned(self, address_operand, alignment):
    #     # This is a simplified check. In reality, you'd need to evaluate the address expression.
    #     if '#' in address_operand:
    #         offset = int(address_operand.split('#')[1].rstrip(']!'))
    #         return offset % alignment == 0
    #     return True  # Assume aligned if we can't determine

    def validate_label_references(self, instruction: Instruction):
        branch_instructions = {
            'b', 'beq', 'bne' 
        }       #'bl', 'bx', 'blx', 'bal', 'bcs', 'bhs', 'bvc', 'bvs', 'bgt', 'bge', 'blt', 'ble', 'bhi', 'bls', 'bpl', 'bmi', 'bcc', 'blo',
        
        if instruction.mnemonic in branch_instructions:
            if not instruction.operands:
                self.errors.append(f"Error: {instruction.mnemonic} instruction requires a label operand")
                return

            label = instruction.operands[0]
            
            if label not in self.symbol_table and label not in self.external_symbols:
                self.errors.append(f"Error: Undefined label '{label}'")
            elif label in self.symbol_table:
                # Check branch distance for non-register branch instructions
                if instruction.mnemonic not in {'bx', 'blx'} or (instruction.mnemonic in {'bx', 'blx'} and not label.startswith('r')):
                    branch_distance = self.symbol_table[label] - self.current_address
                    
                    # Different instructions have different range limits
                    # if instruction.mnemonic in {'b', 'bl', 'bal'}:
                    #     if not (-33554432 <= branch_distance <= 33554428):
                    #         self.errors.append(f"Error: Branch to '{label}' is out of range for {instruction.mnemonic}")
                    # else:  # Conditional branches have a smaller range
                    #     if not (-1048576 <= branch_distance <= 1048572):
                    #         self.errors.append(f"Error: Conditional branch to '{label}' is out of range for {instruction.mnemonic}")

            # Additional checks for bx and blx
            if instruction.mnemonic in {'bx', 'blx'}:
                if label.startswith('r'):
                    if label not in {'r0', 'r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9', 'r10', 'r11', 'r12', 'r13', 'r14', 'r15'}:
                        self.errors.append(f"Error: Invalid register '{label}' for {instruction.mnemonic}")
                elif label not in self.symbol_table and label not in self.external_symbols:
                    self.errors.append(f"Error: Invalid operand '{label}' for {instruction.mnemonic}")

    def validate_type_mismatch(self, instruction: Instruction):
        # Define instruction sets
        arithmetic_instructions = {'add', 'sub', 'rsb', 'adc', 'sbc', 'rsc', 'mul', 'mla'}
        logical_instructions = {'and', 'orr', 'eor', 'bic'}
        data_processing_instructions = arithmetic_instructions.union(logical_instructions)
        #floating_point_instructions = {'vadd', 'vsub', 'vmul', 'vdiv'}
        
        def is_register(op):
            return op.startswith('r') or op.startswith('s') or op.startswith('d')
        
        def is_immediate(op):
            return op.startswith('#')
        
        # def is_float_immediate(op):
        #     try:
        #         float(op.lstrip('#'))
        #         return '.' in op
        #     except ValueError:
        #         return False
        
        if instruction.mnemonic in data_processing_instructions:
            if len(instruction.operands) >= 2:  # Some instructions might have 2 or 3 operands
                op1, op2 = instruction.operands[1], instruction.operands[-1]
                if (is_register(op1) and is_immediate(op2)) or (is_immediate(op1) and is_register(op2)):
                    self.errors.append(f"Warning: Mixing register and immediate operands in '{instruction.mnemonic}'")
        
        # elif instruction.mnemonic in floating_point_instructions:
        #     for op in instruction.operands:
        #         if is_immediate(op) and not is_float_immediate(op):
        #             self.errors.append(f"Error: Using integer immediate in floating-point operation '{instruction.mnemonic}'")
        
        # Check for mixing integer and floating-point operations
        if instruction.mnemonic in arithmetic_instructions:
            has_integer = any(op.startswith('r') for op in instruction.operands)
            has_float = any(op.startswith('s') or op.startswith('d') for op in instruction.operands)
            if has_integer and has_float:
                self.errors.append(f"Error: Mixing integer and floating-point operands in '{instruction.mnemonic}'")
        
        # Check for using floating-point registers in integer operations and vice versa
        if instruction.mnemonic in data_processing_instructions:
            if any(op.startswith('s') or op.startswith('d') for op in instruction.operands):
                self.errors.append(f"Error: Using floating-point registers in integer operation '{instruction.mnemonic}'")
        # elif instruction.mnemonic in floating_point_instructions:
        #     if any(op.startswith('r') for op in instruction.operands):
        #         self.errors.append(f"Error: Using integer registers in floating-point operation '{instruction.mnemonic}'")

    def process_directive(self, instruction: Instruction):
        if instruction.mnemonic.startswith('.'):
            # Section directives
            if instruction.mnemonic in ['.text', '.data', '.bss']:
                self.current_section = instruction.mnemonic[1:]  # Remove the leading '.'
                if instruction.mnemonic == '.text':
                    self.data_section = False
                elif instruction.mnemonic in ['.data', '.bss']:
                    self.data_section = True
            
            # Alignment directive
            # elif instruction.mnemonic == '.align':
            #     if len(instruction.operands) != 1:
            #         self.errors.append("Error: .align directive requires exactly one operand")
            #     else:
            #         try:
            #             alignment = int(instruction.operands[0])
            #             if not (alignment > 0 and (alignment & (alignment - 1) == 0)):
            #                 self.errors.append("Error: .align value must be a power of 2")
            #         except ValueError:
            #             self.errors.append("Error: .align value must be an integer")
            
            # Architecture and instruction set directives
            # elif instruction.mnemonic in ['.arch', '.arm', '.code16', '.code32', '.cpu']:
            #     # These directives typically don't require additional processing in a simple assembler
            #     pass
            
            # Symbol visibility directives
            elif instruction.mnemonic in ['.global', '.hidden']:
                if len(instruction.operands) < 1:
                    self.errors.append(f"Error: {instruction.mnemonic} directive requires at least one symbol")
                else:
                    for symbol in instruction.operands:
                        if instruction.mnemonic == '.global':
                            self.global_symbols.add(symbol)
                        elif instruction.mnemonic == '.hidden':
                            self.hidden_symbols.add(symbol)
            
            # External symbol directive
            elif instruction.mnemonic == '.extern':
                if len(instruction.operands) < 1:
                    self.errors.append("Error: .extern directive requires at least one symbol")
                else:
                    for symbol in instruction.operands:
                        self.external_symbols.add(symbol)
            
            # Function attribute directive
            elif instruction.mnemonic == '.noreturn':
                if not self.current_function:
                    self.errors.append("Error: .noreturn directive must be within a function")
                else:
                    self.current_function.no_return = True
            
            # Section attribute directive
            # elif instruction.mnemonic == '.nocode':
            #     if self.current_section != 'text':
            #         self.errors.append("Error: .nocode directive must be in the .text section")
            #     else:
            #         self.no_code_section = True
            
            # Data initialization directives
            # elif instruction.mnemonic == '.fill':
            #     if len(instruction.operands) not in [2, 3]:
            #         self.errors.append("Error: .fill directive requires 2 or 3 operands")
            #     else:
            #         # Implementation depends on how you're handling data in your assembler
            #         pass
            
            # # Literal pool directive
            # elif instruction.mnemonic == '.ltorg':
            #     # Implementation depends on how you're handling literal pools in your assembler
            #     pass
            
            # Unrecognized directive
            else:
                self.errors.append(f"Error: Unrecognized directive {instruction.mnemonic}")


if __name__ == "__main__":
    input_code = """
        mov r0, #5
        add r1, r2, r3
        bne label1
    label1: ldr r4, [r5]
        cmp r0, #10
        beq exit
        str r1, [sp, #-4]!
    exit:
    """

    tokens = tokenize(input_code)
    parser = Parser(tokens)
    ast = parser.parse()

    analyzer = SemanticAnalyzer(ast)
    errors = analyzer.analyze()
    

    if errors:
        for error in errors:
            print(error)
    else:
        print("No semantic errors found.")
