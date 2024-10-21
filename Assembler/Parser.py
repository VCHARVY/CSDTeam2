from typing import List, Union
from Tokenize import tokenize

class ParseError(Exception):
    pass

class Label:
    def __init__(self, name: str):
        self.name = name
    
    def __repr__(self):
        return f"Label({self.name})"

class Instruction:
    def __init__(self, mnemonic: str, condition: str, operands: List[str]):
        self.mnemonic = mnemonic
        self.condition = condition
        self.operands = operands
    
    def __repr__(self):
        return f"Instruction({self.mnemonic}{self.condition or ''}, {self.operands})"

class Parser:
    def __init__(self, tokens: List[tuple]):
        self.tokens = tokens
        self.pos = 0

    def parse(self) -> List[Union[Label, Instruction]]:
        nodes = []
        while self.pos < len(self.tokens):
            token_type, token_value, line_num = self.tokens[self.pos]
            if token_type == 'LABEL_DEF':
                nodes.append(self.parse_label())
            elif token_type == 'INSTRUCTION':
                nodes.append(self.parse_instruction())
            else:
                raise ParseError(f"Unexpected token {token_type} at line {line_num}")
        return nodes

    def parse_label(self) -> Label:
        _, label_name, _ = self.tokens[self.pos]
        self.pos += 1
        if self.pos < len(self.tokens) and self.tokens[self.pos][0] == 'COLON':
            self.pos += 1
        return Label(label_name)

    def parse_instruction(self) -> Instruction:
        _, mnemonic, line_num = self.tokens[self.pos]
        self.pos += 1
        
        # Add if required
        condition = ''
        # if self.pos < len(self.tokens) and self.tokens[self.pos][0] == 'CONDITION':
        #     _, condition, _ = self.tokens[self.pos]
        #     print(condition)
        #     self.pos += 1

        operands = []
        while self.pos < len(self.tokens):
            token_type, token_value, _ = self.tokens[self.pos]
            if token_type == 'COMMA':
                self.pos += 1
                continue
            if token_type in ['REGISTER', 'IMMEDIATE', 'LABEL', 'BRACKET_OPEN', 'BRACKET_CLOSE', 'EXCLAMATION']:
                operands.append(token_value)
                self.pos += 1
            else:
                break

        #self.validate_operands(mnemonic, condition, operands, line_num)
        return Instruction(mnemonic, condition, operands)



# # Example usage
# input_code = """
#     mov r0, #5
#     add r1, r2, r3
#     bne label1
# label1: ldr r4, [r5] @ Load value from memory
#     cmp r0, #10
#     beq exit
#     str r1, [sp, #-4]
# exit:
#     bx lr
# """

# tokens = tokenize(input_code)
# parser = Parser(tokens)
# ast = parser.parse()

# # Print the resulting AST (Abstract Syntax Tree)
# for node in ast:
#     print(node)