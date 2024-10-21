import os
from opcode_table import opcode_table
from Tokenize import tokenize

def assemble_asm_to_object(asm_file, obj_file):
    try:
        # Check if the input ASM file exists
        if not os.path.exists(asm_file):
            print(f"Error: {asm_file} not found.")
            return

        with open(asm_file, 'r') as asm:
            with open(obj_file, 'wb') as obj:
                tokens = tokenize(asm)   ## check data types matches, input must be a string
                
                
                
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
    asm_file = input("Enter the ASM file (e.g., 'Prog.asm'): ")
    obj_file = input("Enter the output object file (e.g., 'Prog.o'): ")

    assemble_asm_to_object(asm_file, obj_file)

if __name__ == "__main__":
    main()