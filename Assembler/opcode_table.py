opcode_table= {
    'ADD': 0b0000001,  # Addition
    'SUB': 0b0000010,  # Subtraction
    'MUL': 0b0000011,  # Multiplication
    'MLA' : 0b0000100,
    'SDIV': '0011', # Signed Division
    'UDIV': '0100', # Unsigned Division

    'AND': 0b0000010,  # Bitwise AND
    'ORR': 0b0000010,  # Bitwise OR
    'EOR': 0b0000010,  # Bitwise XOR
    'MVN': 0b0000010,  # Bitwise NOT

    'LSL': '1001',  # Logical Shift Left
    'LSR': '1010',  # Logical Shift Right

    'LDR': '1011',  # Load Register
    'STR': '1100',  # Store Register

    'CMP': 0b0000010,  # Compare
    'CMN': 0b0000010,
    'TST': 0b0000010,  # Test
    'TEQ' : 0b0000010,

    'B': '1111',     # Unconditional Branch
    'BEQ': '00001',  # Branch if Equal
    'BNE': '00010',  # Branch if Not Equal
    'BGT': '00011',  # Branch if Greater Than
    'BLT': '00100',  # Branch if Less Than

    'MOV': 0b0000010,  # Move
    'MVN' : 0b0000010,
    'PUSH': '00110', # Push to Stack
    'POP': '00111',  # Pop from Stack
}


