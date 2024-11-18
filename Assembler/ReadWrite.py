import os
from opcode_table import opcode_table
from Tokenize import Tokenizer

input_code = """
    mov r0, #5
    add r1, r2, r3
    bne label1
label1: ldr r4, [r5] @ Load value from memory
    cmp r0, #10
    beq exit
    str r1, [sp, #-4]!
exit:
"""

def assemble_asm_to_object(asm_file, obj_file):
    try:
        print("H")
        if not os.path.exists(asm_file):
            print(f"Error: {asm_file} not found.")
            return

        with open(asm_file, 'r') as asm:
            with open(obj_file, 'wb') as obj:
                print("H")
                tokenizer = Tokenizer(input_code)
                tokens = tokenizer.tokenize()
                print("H")
                for token in tokens:
                    print(token)
                
                
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