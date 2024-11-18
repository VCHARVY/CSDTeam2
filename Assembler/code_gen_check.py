# # codegen.py

# # A dictionary for opcode to machine code translation
# OPCODE_TABLE = {
#     'ADC': 0,
#     'ADD': 1,
#     'AND': 2,
#     'B': 3,
#     'BIC': 4, # a & ~b
#     'BL': 5,
#     'BLX': 6,
#     'BX': 7,
#     'CLZ': 8,
#     'CMN': 9, # Can be done with cmp
#     'CMP': 10,
#     'EOR': 11,
#     #'LDM': 12
#     #'MLA': 13,
#     'MOV': 14,
#     'MSR': 15,
#     'MRS': 16,
#     'MUL': 17,
#     'MVN': 18,
#     'ORR': 19,
#     'RSB': 20,
#     'RSC': 21,
#     'SBC': 22,
#     #'SMLA': 23,
#     'SMULL': 24,
#     'STR': 25,
#     'SUB': 26,
#     'SWI': 27,
#     'LDR': 28,
#     #'STM': 29,
#     'TEQ': 30,
#     'TST': 31,
#     'UMULL': 32,
# }

# # A dictionary for register to binary translation (assuming 3-bit register)
# REGISTER_TABLE = {
#     'R0': '000',
#     'R1': '001',
#     'R2': '010',
#     'R3': '011',
#     'R4': '100',
#     'R5': '101',
#     'R6': '110',
#     'R7': '111',
# }

# # A function to convert assembly instruction to machine code
# def assemble_instruction(instruction):
#     # Split the instruction into its components
#     parts = instruction.split()
#     if len(parts) == 0:
#         return None  # Ignore empty lines

#     # Extract the opcode and operands
#     opcode = parts[0].upper()
#     operands = parts[1:] if len(parts) > 1 else []

#     # Lookup the opcode in the opcode table
#     if opcode not in OPCODE_TABLE:
#         raise ValueError(f"Invalid opcode: {opcode}")
    
#     # Translate the opcode (start with machine code as a string)
#     machine_code = OPCODE_TABLE[opcode]

#     # Translate operands (assuming we're dealing with registers and/or immediate values)
#     for operand in operands:
#         if operand in REGISTER_TABLE:
#             machine_code += REGISTER_TABLE[operand]
#         elif operand.isdigit():  # Immediate value (assuming it's in decimal)
#             immediate = format(int(operand), '04b')  # 4-bit binary
#             machine_code += immediate
#         else:
#             raise ValueError(f"Invalid operand: {operand}")

#     return machine_code

# # Sample assembly program (list of instructions)
# assembly_program = [
#     "LOAD R1 10",  # Example: LOAD from memory address 10 into R1
#     "ADD R1 R2",   # Example: ADD content of R1 and R2
#     "STORE R1 15", # Example: STORE content of R1 to memory address 15
#     "SUB R3 R1"    # Example: SUB content of R1 from R3
# ]

# # Convert the assembly program to machine code
# def generate_machine_code(assembly_program):
#     machine_code_output = []
#     for instruction in assembly_program:
#         try:
#             machine_code = assemble_instruction(instruction)
#             if machine_code:
#                 machine_code_output.append(machine_code)
#         except ValueError as e:
#             print(f"Error: {e}")
#     return machine_code_output

# # Main execution
# if __name__ == "__main__":
#     machine_code = generate_machine_code(assembly_program)
#     for line in machine_code:
#         print(line)



# codegen.py

# A dictionary for opcode to machine code translation
OPCODE_TABLE = {
    'MOV': '1101',  # Example: opcode for MOV is 1101
    'ADD': '0000',  # Example: opcode for ADD is 0000
    'BNE': '1010',  # Example: opcode for BNE (branch if not equal)
    'LDR': '0110',  # Example: opcode for LDR (load from memory)
    'CMP': '1011',  # Example: opcode for CMP (compare)
    'BEQ': '1000',  # Example: opcode for BEQ (branch if equal)
    'STR': '0111',  # Example: opcode for STR (store to memory)
}

# A dictionary for register to binary translation (assuming 3-bit register)
REGISTER_TABLE = {
    'R0': '000',
    'R1': '001',
    'R2': '010',
    'R3': '011',
    'R4': '100',
    'R5': '101',
    'R6': '110',
    'R7': '111',
    'sp': '1000'
}

# A dictionary for branch labels (to be populated dynamically)
LABELS = {}

# First pass: Collect label addresses
def first_pass(assembly_program):
    address_counter = 0
    for line in assembly_program:
        instruction = line.strip()
        if instruction.endswith(':'):  # Check if it's a label definition
            label = instruction[:-1]  # Remove the colon
            LABELS[label] = address_counter  # Store the label with its address
        else:
            address_counter += 1  # Increment address for each instruction

# A function to convert assembly instruction to machine code
def assemble_instruction(instruction):
    parts = instruction.replace(',', '').split()  # Split and remove commas
    if len(parts) == 0:
        return None  # Ignore empty lines

    # Handle labels: Skip lines that define labels
    if parts[0].endswith(':'):
        return None  # Skip label definitions

    opcode = parts[0].upper()  # First part is the opcode
    operands = parts[1:]  # Remaining parts are operands

    if opcode not in OPCODE_TABLE:
        raise ValueError(f"Invalid opcode: {opcode}")

    machine_code = OPCODE_TABLE[opcode]

    # Handle different instruction formats
    if opcode in ['MOV', 'CMP']:
        # MOV or CMP: one register and one immediate value
        reg = operands[0].upper()
        imm = int(operands[1].replace('#', ''))  # Remove '#' from immediate
        machine_code += REGISTER_TABLE[reg] + format(imm, '05b')  # Assume 5-bit immediate
    elif opcode in ['ADD', 'SUB']:
        # ADD or SUB: three registers
        reg1 = operands[0].upper()
        reg2 = operands[1].upper()
        reg3 = operands[2].upper()
        machine_code += REGISTER_TABLE[reg1] + REGISTER_TABLE[reg2] + REGISTER_TABLE[reg3]
    elif opcode in ['LDR', 'STR']:
        # LDR or STR: one register and a memory address (assuming direct addressing)
        reg = operands[0].upper()
        mem = operands[1].replace('[', '').replace(']', '')  # Simplified memory handling
        machine_code += REGISTER_TABLE[reg] + REGISTER_TABLE[mem]  # Use register as memory address
    elif opcode in ['BNE', 'BEQ']:
        # BNE or BEQ: branch to label
        label = operands[0]
        if label in LABELS:
            branch_address = LABELS[label]
            machine_code += format(branch_address, '08b')  # Assume 8-bit branch address

    return machine_code

# Sample assembly program (list of instructions)
assembly_program = [
    "mov r0, #5",         # MOV R0, #5
    "add r1, r2, r3",     # ADD R1, R2, R3
    "bne label1",         # BNE label1
    "label1: ldr r4, [r5]",  # Label with LDR R4, [R5]
    "cmp r0, #10",        # CMP R0, #10
    "beq exit",           # BEQ exit
    "str r1, [sp, #-4]!"  # STR R1, [SP, #-4]!
    "exit:"
]

# Convert the assembly program to machine code
def generate_machine_code(assembly_program):
    machine_code_output = []

    # First pass: collect labels and their addresses
    first_pass(assembly_program)

    # Second pass: generate machine code
    for instruction in assembly_program:
        try:
            machine_code = assemble_instruction(instruction)
            if machine_code:
                machine_code_output.append(machine_code)
        except ValueError as e:
            print(f"Error: {e}")
    
    return machine_code_output

# Main execution
if __name__ == "__main__":
    machine_code = generate_machine_code(assembly_program)
    for line in machine_code:
        print(line)
