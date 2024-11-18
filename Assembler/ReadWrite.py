import os
from opcode_table import opcode_table
from Tokenize import Tokenizer
from Parser import Label, Instruction, Parser
from Semantic_Analyzer.Semantic_Analyzer import SemanticAnalyzer
from opcode_table import opcode_table
from Code_generator import CodeGenerator

input_code = """
    add r0, r1, #5
    mov r4, #10
    cmp r1, r2
    b exit
exit:
"""

def assemble_asm_to_object(asm_file, obj_file):
    try:
        if not os.path.exists(asm_file):
            print(f"Error: {asm_file} not found.")
            return

        with open(asm_file, 'r') as asm:
            with open(obj_file, 'wb') as obj:
                tokenizer = Tokenizer(input_code)
                tokens = tokenizer.tokenize()
                for token in tokens:
                    print(token)
                
                parser = Parser(tokens)
                ast = parser.parse()
                print(ast)
                
                analyzer = SemanticAnalyzer(ast)
                errors = analyzer.analyze()
                if errors:
                    for error in errors:
                        print(error)
                else:
                    print("No semantic errors found.")
                
                symbol_table = {'exit': 0x100}
                code_gen = CodeGenerator(ast, symbol_table)
                machine_code = code_gen.generate_machine_code()

                print("Generated Machine Code:")
                for i, code in enumerate(machine_code):
                    print(f"Instruction {i}: {code_gen.format_binary(code)}")
                    # Print instruction breakdown
                    itype = (code >> 30) & 0x3
                    u_ctrl = (code >> 24) & 0x3F
                    rd = (code >> 20) & 0xF
                    rm = (code >> 16) & 0xF
                    is_imm = (code >> 15) & 0x1
                    value = code & 0x7FFF
                    print(f"  Type: {itype:02b}, Control: {u_ctrl:06b}, Rd: {rd:04b}, Rm: {rm:04b}, Imm: {is_imm}, Value: {value:015b}")

                # if instruction in opcode_table:
                #     binary_code=opcode_table[instruction]
                #             # binary_data=int(binary_code).to_bytes(4, byteorder='big')
                #         #obj.write(binary_code+'\n')
                #     print("binary code: ",binary_code)
                # else:
                #     print(f"Warning: Unknown instruction {instruction}")
        print(f"Successfully assembled {asm_file} into {obj_file}")
    except Exception as e:
        print(f"An error occurred: {e}")

def main():
    # asm_file = input("Enter the ASM file (e.g., 'Prog.asm'): ")
    # obj_file = input("Enter the output object file (e.g., 'Prog.o'): ")
    asm_file = "prog.asm"
    obj_file = "p.o"
    assemble_asm_to_object(asm_file, obj_file)

if __name__ == "__main__":
    main()