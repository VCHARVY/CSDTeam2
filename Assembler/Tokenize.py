# import re

# TOKEN_TYPES = {
#     'REGISTER': r'\b(?:r1[0-5]|r[0-9]|sp|lr|pc)\b',  # Registers including sp, lr, pc
#     'LABEL_DEF': r'(?:^|(?<=\n))\s*([a-zA-Z_][a-zA-Z_0-9]*):',  # Label definition with colon, including local labels
#     'DIRECTIVE': r'\b(?:.arch|.arm|.code16|.code32|.cpu|.eabi|.extern|.global|.hidden|.nocode|.noreturn|.section|.text|.data|.bss|.align|.fill|.ltorg)\b',
    
#     'INSTRUCTION': r'\b(?:' + 
#                 r'(?:add|sub|rsb|adc|sbc|rsc|and|orr|eor|bic|mov|mvn)|' +  # Data processing
#                 r'(?:mul|mla|umull|umlal|smull|smlal)|' +  # Multiply
#                 r'(?:cmp|cmn)|' +

#                 r'(?:ldr|str|ldrb|strb|ldrh|strh|ldm|stm)|' +  # Load/Store          'ldrd', 'strd', 
                
#                 r'(?:b|bl|bx|blx)|' +  # Branch
#                 r'(?:bal|beq|bne|bpl|bmi|bcc|blo|bcs|bhs|bvc|bcs|bgt|bge|blt|ble|bhi|bls)|' +  # Branch
#                 r'(?:lsl|lsr|asr|ror|rrx)|' +  #Shift operators
                
#                 r'(?:mrs|msr)|' +  # Status register access
            
#                 #r'(?:cdp|ldc|stc|mcr|mrc)|' +  # Coprocessor- Add if required 
#                 # swap instructions- Add if required 
#                 #tst, teq
                
#                 # add floating point instructions
#                 r'(?:swi|svc|bkpt)' +  # System
#                 r')\b',
                
#     'IMMEDIATE': r'#-?(?:0x[0-9a-fA-F]+|\d+)',  # Immediate values, including hexadecimal

#     # 'CONDITION': r'\b(?:eq|ne|cs|cc|mi|pl|vs|vc|hi|ls|ge|lt|gt|le|al)\b',  # ARM condition codes
#     # Add if required 


#     'LABEL': r'\b[a-zA-Z_][a-zA-Z_0-9]*\b', # Label used in instructions, including local labels
#     'COMMA': r',',  # Comma separator
#     'BRACKET_OPEN': r'\[',  # Opening square bracket
#     'BRACKET_CLOSE': r'\]',  # Closing square bracket
#     'EXCLAMATION': r'!',  # Exclamation mark for pre/post indexing
#     'COMMENT': r'@.*',  # ARM comments starting with '@'
#     'WHITESPACE': r'\s+',  # Whitespace
# }

# # Compile regular expressions for each token typeFlow control
# TOKEN_REGEX = {token: re.compile(pattern) for token, pattern in TOKEN_TYPES.items()}

# def tokenize(input_code):
#     tokens = []
#     lines = input_code.split('\n')
#     for line_num, line in enumerate(lines, 1):
#         index = 0
#         while index < len(line):
#             match_found = False
#             for token_type, regex in TOKEN_REGEX.items():
#                 match = regex.match(line, index)
#                 if match:
#                     if token_type == 'LABEL_DEF':
#                         label = match.group(1)  # Get the label without the colon
#                         tokens.append((token_type, label, line_num))
#                         tokens.append(('COLON', ':', line_num))
#                     elif token_type not in ['WHITESPACE', 'COMMENT']:
#                         tokens.append((token_type, match.group(), line_num))
#                     index = match.end()
#                     match_found = True
#                     break
#             if not match_found:
#                 print(f"Failed at line {line_num}, index {index}, char '{line[index]}'")
#                 raise ValueError(f"Unexpected character at line {line_num}, index {index}: {line[index]}")
    
#     return tokens   # Instruction type - instruction - line no

# # Example usage
# # input_code = """
# #     mov r0, #5
# #     add r1, r2, r3
# #     bne label1
# # label1: ldr r4, [r5] @ Load value from memory
# #     cmp r0, #10
# #     beq exit
# #     str r1, [sp, #-4]!
# # exit:
# # """

# # tokens = tokenize(input_code)
# # for token in tokens:
# #     print(f"Line {token[2]}: {token[0]} : {token[1]}")








import re

class Tokenizer:
    """
    A class for tokenizing ARM assembly code.
    """

    TOKEN_TYPES = {
        'REGISTER': r'\b(?:r1[0-5]|r[0-9]|sp|lr|pc)\b',  # Registers including sp, lr, pc
        'LABEL_DEF': r'(?:^|(?<=\n))\s*([a-zA-Z_][a-zA-Z_0-9]*):',  # Label definition with colon, including local labels
        'DIRECTIVE': r'\b(?:.arch|.arm|.code16|.code32|.cpu|.eabi|.extern|.global|.hidden|.nocode|.noreturn|.section|.text|.data|.bss|.align|.fill|.ltorg)\b',
        
        'INSTRUCTION': r'\b(?:' + 
                    r'(?:add|sub|rsb|adc|sbc|rsc|and|orr|eor|bic|mov|mvn)|' +  # Data processing
                    r'(?:mul|mla|umull|umlal|smull|smlal)|' +  # Multiply
                    r'(?:cmp|cmn)|' +

                    r'(?:ldr|str|ldrb|strb|ldrh|strh|ldm|stm)|' +  # Load/Store          'ldrd', 'strd', 
                    
                    r'(?:b|bl|bx|blx)|' +  # Branch
                    r'(?:bal|beq|bne|bpl|bmi|bcc|blo|bcs|bhs|bvc|bcs|bgt|bge|blt|ble|bhi|bls)|' +  # Branch
                    r'(?:lsl|lsr|asr|ror|rrx)|' +  # Shift operators
                    
                    r'(?:mrs|msr)|' +  # Status register access
                
                    #r'(?:cdp|ldc|stc|mcr|mrc)|' +  # Coprocessor- Add if required 
                    # swap instructions- Add if required 
                    #tst, teq
                    
                    # add floating point instructions
                    r'(?:swi|svc|bkpt)' +  # System
                    r')\b',
                
        'IMMEDIATE': r'#-?(?:0x[0-9a-fA-F]+|\d+)',  # Immediate values, including hexadecimal

        # 'CONDITION': r'\b(?:eq|ne|cs|cc|mi|pl|vs|vc|hi|ls|ge|lt|gt|le|al)\b',  # ARM condition codes
        # Add if required 


        'LABEL': r'\b[a-zA-Z_][a-zA-Z_0-9]*\b', # Label used in instructions, including local labels
        'COMMA': r',',  # Comma separator
        'BRACKET_OPEN': r'\[',  # Opening square bracket
        'BRACKET_CLOSE': r'\]',  # Closing square bracket
        'EXCLAMATION': r'!',  # Exclamation mark for pre/post indexing
        'COMMENT': r'@.*',  # ARM comments starting with '@'
        'WHITESPACE': r'\s+',  # Whitespace
    }

    # Compile regular expressions for each token type
    TOKEN_REGEX = {token: re.compile(pattern) for token, pattern in TOKEN_TYPES.items()}

    def __init__(self, input_code):
        """
        Initialize the Tokenizer with the input code.
        """
        self.input_code = input_code
        self.lines = input_code.split('\n')

    def tokenize(self):
        """
        Tokenize the input code and return a list of tokens.
        """
        tokens = []
        for line_num, line in enumerate(self.lines, 1):
            index = 0
            while index < len(line):
                match_found = False
                for token_type, regex in self.TOKEN_REGEX.items():
                    match = regex.match(line, index)
                    if match:
                        if token_type == 'LABEL_DEF':
                            label = match.group(1)  # Get the label without the colon
                            tokens.append((token_type, label, line_num))
                            tokens.append(('COLON', ':', line_num))
                        elif token_type not in ['WHITESPACE', 'COMMENT']:
                            tokens.append((token_type, match.group(), line_num))
                        index = match.end()
                        match_found = True
                        break
                if not match_found:
                    print(f"Failed at line {line_num}, index {index}, char '{line[index]}'")
                    raise ValueError(f"Unexpected character at line {line_num}, index {index}: {line[index]}")
        
        return tokens   # Instruction type - instruction - line no
