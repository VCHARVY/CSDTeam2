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
uint32_t STATIC;

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
            fout << "mov r1, #" << value << endl;
            fout << "str r1, [r6, #0]" << endl;
            fout << "add r6, r6, #4" << endl;
            SP = SP + 8;
        }
        else {
            if(segment == "local"){
                fout << "mov r1, r7" << endl;
            }
            else if(segment == "argument"){
                fout << "mov r1, r8" << endl;
            }
            else if(segment == "this"){
                fout << "mov r1, r9" << endl;
            }
            else if(segment == "that"){
                fout << "mov r1, r10" << endl;
            }
            else if(segment == "static"){
                fout << "mov r1, r11" << endl;
            }
            value = to_string(stoi(value) * 4);
            fout << "ldr r2, [r1, #"  << value << "]" << endl;
            fout << "str r2, [r6, #0]" << endl;
            fout << "add r6, r6, #4" << endl;
            SP = SP + 8;
        }
    }

    void pop(){
            if(segment == "local"){
                fout << "mov r1, r7" << endl;
            }
            else if(segment == "argument"){
                fout << "mov r1, r8" << endl;
            }
            else if(segment == "this"){
                fout << "mov r1, r9" << endl;
            }
            else if(segment == "that"){
                fout << "mov r1, r10" << endl;
            }
            else if(segment == "static"){
                fout << "mov r1, r11" << endl;
            }
        
        value = to_string(stoi(value) * 4);
        fout << "sub r6, r6, #4" << endl;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "str r2, [r1, #" << value << "]" << endl;
        SP = SP - 8;
    }

    void add(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "add r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void sub(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "sub r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void mul(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "mul r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void div(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "sdiv r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void asl(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "asl r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void asr(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "asr r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void _and(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "AND r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void _or(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "OR r3, r1, r2" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void _not(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "EOR r2, r1, #1" << endl;
        fout << "str r2, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void neg() {
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "mov r0, #0" << endl;
        fout << "sub r2, r0, r1" << endl;
        fout << "str r2, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
    }

    void equal(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "cmp r1, r2" << endl;
        fout << "beq label" << label_count << endl;
        fout << "mov r3, #0" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
        fout << "b label" << label_count+1 << endl;
        fout << "label" << label_count << ":" << endl;
        fout << "mov r3, #1" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
        fout << "label" << label_count+1 << ":" << endl;
        label_count += 2;
    }

    void lessThan(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "cmp r1, r2" << endl;
        fout << "blt label" << label_count << endl;
        fout << "mov r3, #0" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
        fout << "b label" << label_count+1 << endl;
        fout << "label" << label_count << ":" << endl;
        fout << "mov r3, #1" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
        fout << "label" << label_count+1 << ":" << endl;
        label_count += 2;
    }

    void greaterThan(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r2, [r6, #0]" << endl;
        fout << "cmp r1, r2" << endl;
        fout << "bgt label" << label_count << endl;
        fout << "mov r3, #0" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
        fout << "b label" << label_count+1 << endl;
        fout << "label" << label_count << ":" << endl;
        fout << "mov r3, #1" << endl;
        fout << "str r3, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;
        fout << "label" << label_count+1 << ":" << endl;
        label_count += 2;
    }

    void goto_label(){
        fout << "b " << value << endl;
    }

    void label(){
        fout << value << ":" << endl;
    }

    void if_goto(){
        fout << "sub r6, r6, #4" << endl;
        SP = SP - 8;
        fout << "ldr r1, [r6, #0]" << endl;
        fout << "cmp r1, #1" << endl;
        fout << "beq " << value << endl;
    }

    void function(){
        fout << segment << ":" << endl;
        fout << "mov r1, #0" << endl;
        for(int i = 0; i < stoi(value); i++){
            fout << "str r1, [r6, #0]" << endl;
            fout << "add r6, r6, #4" << endl;
            SP = SP + 8;
        }
    }

    void call() {
        // Save LCL
        fout << "mov r1, r7" << endl;
        fout << "str r1, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;

        // Save ARG
        fout << "mov r1, r8" << endl;
        fout << "str r1, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;

        // Save THIS
        fout << "mov r1, r9" << endl;
        fout << "str r1, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;

        // Save THAT
        fout << "mov r1, r10" << endl;
        fout << "str r1, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;

        // Save STATIC
        fout << "mov r1, r11" << endl;
        fout << "str r1, [r6, #0]" << endl;
        fout << "add r6, r6, #4" << endl;
        SP = SP + 8;

        // ARG = SP - n - 5
        fout << "mov r1, r6" << endl;
        fout << "sub r1, r1, #" << value << endl;
        fout << "sub r1, r1, #20" << endl; // 5 * 4 bytes for each saved register
        fout << "mov r8, r1" << endl;

        // LCL = SP
        fout << "mov r7, r6" << endl;

        // Branch to function
        fout << "bl " << segment << endl;
    }

    void _return() {
        // endFrame = LCL
        fout << "mov r1, r7" << endl;
        fout << "mov r2, r1" << endl;

        // *ARG = pop()
        fout << "sub r6, r6, #4" << endl;
        fout << "ldr r4, [r6, #0]" << endl;
        fout << "str r4, [r8, #0]" << endl;

        // SP = ARG + 1
        fout << "mov r6, r8" << endl;
        fout << "add r6, r6, #4" << endl;

        // Restore STATIC = *(endFrame - 1)
        fout << "sub r2, r2, #4" << endl;
        fout << "ldr r4, [r2, #0]" << endl;
        fout << "mov r11, r4" << endl;

        // Restore THAT = *(endFrame - 2)
        fout << "sub r2, r2, #4" << endl;
        fout << "ldr r4, [r2, #0]" << endl;
        fout << "mov r10, r4" << endl;

        // Restore THIS = *(endFrame - 3)
        fout << "sub r2, r2, #4" << endl;
        fout << "ldr r4, [r2, #0]" << endl;
        fout << "mov r9, r4" << endl;

        // Restore ARG = *(endFrame - 4)
        fout << "sub r2, r2, #4" << endl;
        fout << "ldr r4, [r2, #0]" << endl;
        fout << "mov r8, r4" << endl;

        // Restore LCL = *(endFrame - 5)
        fout << "sub r2, r2, #4" << endl;
        fout << "ldr r4, [r2, #0]" << endl;
        fout << "mov r7, r4" << endl;

        // Branch to return address in LR
        fout << "bx lr" << endl;
    }
};

void parse(string &inputFile, string &outputFile){
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
    fout << "mov r1, #0x18" << endl;
    fout << "mov r2, #0" << endl;
    fout << "svc 0" << endl;

    //.data
    fout << "\t.section .data" << endl;
    fout << "\t.section .bss" << endl;
}

int main(int argc, char* argv[]) {
    SP = 9280;
    LCL = 8224;
    ARG = 8736;
    THIS = 0;
    THAT = 0;
    STATIC = 0;
    //sp = r6
    //lcl = r7
    //arg = r8
    //this = r9
    //that = r10
    //static = r11

    string input = argv[1];
    string output = argv[2];
    parse(input, output);
}