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
            else if(segment == "this"){
                fout << "MOV w1, #" << THIS << endl;
            }
            else if(segment == "that"){
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
        else if(segment == "this"){
            fout << "MOV w1, #" << THIS << endl;
        }
        else if(segment == "that"){
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

    void mul(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "MUL w3, w1, w2" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void div(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "SDIV w3, w1, w2" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void asl(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "ASL w3, w1, w2" << endl;
        fout << "STR w3, [SP, #0]" << endl;
        fout << "ADD SP, SP, #8" << endl;
        SP = SP + 8;
    }

    void asr(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w2, [SP, #0]" << endl;
        fout << "ASR w3, w1, w2" << endl;
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

    void neg() {
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "MOV w0, #0" << endl;
        fout << "SUB w2, w0, w1" << endl;
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
        fout << "BEQ label" << label_count << endl;
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
        fout << "BLT label" << label_count << endl;
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
        fout << "BGT label" << label_count << endl;
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
        fout << "label" << value << ":" << endl;
    }

    void if_goto(){
        fout << "SUB SP, SP, #8" << endl;
        SP = SP - 8;
        fout << "LDR w1, [SP, #0]" << endl;
        fout << "CMP w1, #0" << endl;
        fout << "BEQ " << value << endl;
    }

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

        //ARG = SP - n - 5
        fout << "MOV w1, SP" << endl;
        fout << "SUB w1, w1, #" << value << endl;
        fout << "SUB w1, w1, #5" << endl;
        fout << "MOV ARG, w1" << endl;

        //LCL = SP
        fout << "MOV LCL, SP" << endl;

        fout << "BL " << segment << endl;
    }


    void _return() {
        // endFrame = LCL
        fout << "MOV w1, LCL" << endl;
        fout << "MOV w2, w1" << endl;

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

        // branch to return address in LR
        fout << "BR LR" << endl;
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

        if(command == "mul" || command == "div" || command == "asl" || command == "asr"){
            instruction.token_name = command;
            if(command == "mul"){
                instruction.mul();
            }
            else if(command == "div"){
                instruction.div();
            }
            else if(command == "asl"){
                instruction.asl();
            }
            else if(command == "asr"){
                instruction.asr();
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
    fout << "\t.section .bss" << endl;
}

int main() {
    SP = 9280;
    LCL = 8224;
    ARG = 8736;
    THIS = 0;
    THAT = 0;

    //parse("input.vm", "output.asm");
    parse("input2.vm", "output2.asm");
}