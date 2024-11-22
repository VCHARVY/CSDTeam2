import os
from opcode_table import opcode_table
from Tokenize import Tokenizer
from Parser import Label, Instruction, Parser
from Semantic_Analyzer.Semantic_Analyzer import SemanticAnalyzer
from opcode_table import opcode_table
from Code_generator import CodeGenerator

def assemble_asm_to_object(asm_file, obj_file):
    try:
        if not os.path.exists(asm_file):
            print(f"Error: {asm_file} not found.")
            return

        with open(asm_file, 'r') as asm:
            with open(obj_file, 'w') as obj:
                input_code = asm.read()
                print(input_code)

                tokenizer = Tokenizer(input_code)
                tokens = tokenizer.tokenize()
                for token in tokens:
                    print(token)
                
                parser = Parser(tokens)
                ast = parser.parse()
                print(ast)
                
                analyzer = SemanticAnalyzer(ast)
                errors, symbol_table = analyzer.analyze()
                if errors:
                    for error in errors:
                        print(error)
                else:
                    print("No semantic errors found.")
                
                #symbol_table = {'exit': 0x100, 'label1' : 0x101, 'lab2' : 0x102,}
                code_gen = CodeGenerator(ast, symbol_table)
                machine_code = code_gen.generate_machine_code()
                i = 0
                print("Generated Machine Code:")
                for i, code in enumerate(machine_code):
                    s = code_gen.format_binary(code)
                    obj.write(s)
                    obj.write("\n")
                    print(f"Instruction {i}: {s}")
                    # Print instruction breakdown
                    itype = (code >> 30) & 0x3
                    u_ctrl = (code >> 24) & 0x3F
                    rd = (code >> 20) & 0xF
                    rm = (code >> 16) & 0xF
                    is_imm = (code >> 15) & 0x1
                    value = code & 0x7FFF
                    print(f"  Type: {itype:02b}, Control: {u_ctrl:06b}, Rd: {rd:04b}, Rm: {rm:04b}, Imm: {is_imm}, Value: {value:015b}")
                    i+=1
                
                obj.write("#")
                obj.write(str(symbol_table))   
                obj.write("\n#")
                obj.write(str(i))         
        print(f"Successfully assembled {asm_file} into {obj_file}")
    except Exception as e:
        print(f"An error occurred: {e}")

def main():
    asm_file = input("Enter the ASM file (e.g., 'Prog.asm'): ")
    obj_file = input("Enter the output object file (e.g., 'Prog.o'): ")
    # asm_file = "comp1.asm"
    # obj_file = "p1.o"
    assemble_asm_to_object(asm_file, obj_file)

if __name__ == "__main__":
    main()