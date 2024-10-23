#include <fstream>
#include <cstdint>
#include <iostream>
#include <vector>
#include <stack>
#include <sstream>
#include <string>
using namespace std;

uint32_t SP;
uint32_t LCL;
uint32_t ARG;
uint32_t THIS;
uint32_t THAT;

uint32_t label_count = 0;

ifstream fin;
ofstream fout;

class VMToARM {
    public:
    string token_name;
    string segment;
    string value;

    void push(){
        if(segment == "constant"){
            fout << "MOV w1, #" << value << endl;
            fout << "STR w1, [SP, #0]" << endl;
            fout << "ADD SP, SP, #8" << endl;
            SP = SP + 8;
        }
        else {
            if(segment == "local"){
                fout << "MOV w1, #" << LCL << endl;
            }
            else if(segment == "argument"){
                fout << "MOV w1, #" << ARG << endl;
            }
            else if(segment == "THIS"){
                fout << "MOV w1, #" << THIS << endl;
            }
            else if(segment == "THAT"){
                fout << "MOV w1, #" << THAT << endl;
            }
            fout << "LDR w2, [w1, "  << value << "]" << endl;
            fout << "STR w2, [SP, #0]" << endl;
            fout << "ADD SP, SP, #8" << endl;
            SP = SP + 8;
        }
    }

    void pop(){
        if(segment == "local"){
            fout << "MOV w1, #" << LCL << endl;
        }
        else if(segment == "argument"){
            fout << "MOV w1, #" << ARG << endl;
        }
        else if(segment == "THIS"){
            fout << "MOV w1, #" << THIS << endl;
        }
        else if(segment == "THAT"){
            fout << "MOV w1, #" << THAT << endl;
        }
        fout << "SUB SP, SP, #8" << endl;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "STR w2, [w1, " << value << "]" << endl;
        SP = SP - 8;
    }

    void add(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "ADD w3, w1, w2" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void sub(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "SUB w3, w1, w2" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void _and(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "AND w3, w1, w2" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void _or(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "OR w3, w1, w2" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void _not(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "EOR w2, w1, #1" << endl;
        fout << "STR w2, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void neg(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "NEG w2, w1" << endl;
        fout << "STR w2, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void equal(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "CMP w1, w2" << endl;
        fout << "B.EQ label" << label_count << endl;
        fout << "MOV w3, #0" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
        fout << "B label" << label_count+1 << endl;
        fout << "label" << label_count << ":" << endl;
        fout << "MOV w3, #1" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
        fout << "label" << label_count+1 << ":" << endl;
        label_count += 2;
    }

    void lessThan(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "CMP w1, w2" << endl;
        fout << "B.LT label" << label_count << endl;
        fout << "MOV w3, #0" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
        fout << "B label" << label_count+1 << endl;
        fout << "label" << label_count << ":" << endl;
        fout << "MOV w3, #1" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
        fout << "label" << label_count+1 << ":" << endl;
        label_count += 2;
    }

    void greaterThan(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "CMP w1, w2" << endl;
        fout << "B.GT label" << label_count << endl;
        fout << "MOV w3, #0" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
        fout << "B label" << label_count+1 << endl;
        fout << "label" << label_count << ":" << endl;
        fout << "MOV w3, #1" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
        fout << "label" << label_count+1 << ":" << endl;
        label_count += 2;
    }

    void goto_label(){
        fout << "B " << value << endl;
    }

    void label(){
        fout << value << ":" << endl;
    }

    void if_goto(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "CMP w1, #0" << endl;
        fout << "B.EQ " << value << endl;
    }

    /*
    *   function f n: Declares a function f with n local variables.
    *   call f m: Calls the function f, after pushing m arguments onto the stack.
    *   return: Returns from the function, restoring the state of the caller. *
    *   Based on Nand2Tetris stack-based VM Language
    */

    /*
    **** The calling function view:
    * Before calling the function, the caller must push as many arguments as necessary onto the stack;
    * Next, the caller invokes the function using the call command;
    * After the called function returns, the arguments that the caller has pushed before the call have
    disappeared fromthe stack, and a return value (that always exists) appears at the top of the stack;
    * After the called function returns, the caller’s memory segments argument, local, static, this, that,
    and pointer are the same as before the call, and the temp segment is undefined.

    ****The called function view:
    * When the called function starts executing, its argument segment has been initialized with actual
    argument values passed by the caller and its local variables segment has been allocated and
    initialized to zeros. The static segment that the called function sees has been set to the static segment
    of the VM file to which it belongs, and the working stack that it sees is empty. The segments this,
    that, pointer, and temp are undefined upon entry.
    * Before returning, the called function must push a value onto the stack.
    */

    void function(){
        fout << segment << ":" << endl;
        fout << "MOV w1, #0" << endl;
        for(int i = 0; i < stoi(value); i++){
            fout << "STR w1, [SP, #0]" << endl;
            fout << "ADD SP, SP, #8" << endl;
            SP = SP + 8;
        }
    }

    void call(){
        //local
        fout << "MOV w1, #" << LCL << endl;
        fout << "STR w1, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;

        //argument
        fout << "MOV w1, #" << ARG << endl;
        fout << "STR w1, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;

        //this
        fout << "MOV w1, #" << THIS << endl;
        fout << "STR w1, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;

        //that
        fout << "MOV w1, #" << THAT << endl;
        fout << "STR w1, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;

        //return address
        fout << "MOV w1, #return" << label_count << endl;
        fout << "STR w1, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;

        //ARG = SP - n - 5
        fout << "MOV w1, SP" << endl;
        fout << "SUB w1, w1, #" << value << endl;
        fout << "SUB w1, w1, #5" << endl;
        fout << "MOV ARG, w1" << endl;

        //LCL = SP
        fout << "MOV LCL, SP" << endl;

        //goto f
        fout << "B " << segment << endl;

        //return label
        fout << "return" << label_count << ":" << endl;
        label_count++;
    }

    void _return() {
        // endFrame = LCL
        fout << "MOV w1, LCL" << endl;
        fout << "MOV w2, w1" << endl;

        // retAddr = *(endFrame - 5)
        fout << "SUB w1, w1, #40" << endl;
        fout << "LDR w3, [w1, #0]" << endl;

        // *ARG = pop()
        fout << "SUB SP, SP, #8" << endl;
        fout << "LDR w4, [SP, #0]" << endl;
        fout << "STR w4, [ARG, #0]" << endl;

        // SP = ARG + 1
        fout << "MOV SP, ARG" << endl;
        fout << "ADD SP, SP, #8" << endl;

        // THAT = *(endFrame - 1)
        fout << "SUB w2, w2, #8" << endl;
        fout << "LDR w4, [w2, #0]" << endl;
        fout << "MOV THAT, w4" << endl;

        // THIS = *(endFrame - 2)
        fout << "SUB w2, w2, #8" << endl;
        fout << "LDR w4, [w2, #0]" << endl;
        fout << "MOV THIS, w4" << endl;

        // ARG = *(endFrame - 3)
        fout << "SUB w2, w2, #8" << endl;
        fout << "LDR w4, [w2, #0]" << endl;
        fout << "MOV ARG, w4" << endl;

        // LCL = *(endFrame - 4)
        fout << "SUB w2, w2, #8" << endl;
        fout << "LDR w4, [w2, #0]" << endl;
        fout << "MOV LCL, w4" << endl;

        // goto retAddr (branch to return address)
        fout << "BR w3" << endl;
    }
};

void parse(string inputFile, string outputFile){
    fin.open(inputFile);
    if(!fin.is_open()){
        cout << "Error opening file" << endl;
        return;
    }

    fout.open(outputFile);
    if(!fout.is_open()){
        cout << "Error opening file" << endl;
        return;
    }

    string line;
    fout << "\t.section .text" <<endl;
    fout << "\t.globl _start\n" << endl;
    fout << "_start:" << endl;

    while(getline(fin, line)){
        VMToARM instruction;
        stringstream ss(line);
        string command;
        ss >> command;
        if(command == "push" || command == "pop"){
            instruction.token_name = command;
            ss >> instruction.segment;
            ss >> instruction.value;

            if(instruction.token_name == "push"){
                instruction.push();
            }
            else if(instruction.token_name == "pop"){
                instruction.pop();
            }
        }
        if(command == "add" || command == "sub" || command == "eq" || command == "lt" || command == "gt"){
            instruction.token_name = command;
            if(command == "add"){
                instruction.add();
            }
            else if(command == "sub"){
                instruction.sub();
            }
            else if(command == "eq"){
                instruction.equal();
            }
            else if(command == "lt"){
                instruction.lessThan();
            }
            else if(command == "gt"){
                instruction.greaterThan();
            }
        }

        if(command == "and" || command == "or" || command == "not" || command == "neg"){
            instruction.token_name = command;
            if(command == "and"){
                instruction._and();
            }
            else if(command == "or"){
                instruction._or();
            }
            else if(command == "not"){
                instruction._not();
            }
            else if(command == "neg"){
                instruction.neg();
            }
        } 

        if(command == "label" || command == "goto" || command == "if-goto"){
            instruction.token_name = command;
            ss >> instruction.value;
            if(instruction.token_name == "label"){
                instruction.label();
            }
            else if(instruction.token_name == "goto"){
                instruction.goto_label();
            }
            else if(instruction.token_name == "if-goto"){
                instruction.if_goto();
            }
        }

        if(command == "function" || command == "call" || command == "return"){
            instruction.token_name = command;
            ss >> instruction.segment;
            ss >> instruction.value;
            if(instruction.token_name == "function"){
                instruction.function();
            }
            else if(instruction.token_name == "call"){
                instruction.call();
            }
            else if(instruction.token_name == "return"){
                instruction._return();
            }
        }
        fout << endl;
    }

    //exit
    fout << "MOV w1, #0x18" << endl;
    fout << "MOV w2, #0" << endl;
    fout << "SVC 0" << endl;

    //.data
    fout << "\t.section .data" << endl;
}

int main() {
    SP = 256;
    LCL = 0;
    ARG = 0;
    THIS = 0;
    THAT = 0;

    parse("input2.vm", "output2.asm");
}