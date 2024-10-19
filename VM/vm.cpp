#include <fstream>
#include <cstdint>
#include <iostream>
#include <vector>
#include <stack>
#include <sstream>
using namespace std;

uint32_t sp;
uint32_t local;
uint32_t arg;
uint32_t _this;
uint32_t that;

stack<string> called_functions;

int label_counter;

int pc = 0;

vector<uint32_t> ram;

string file_name;
string fu_name;

ifstream fin;
ofstream fout;

class VMToARM
{
public:
    string segment;
    string element;
    string name;
    string token_name;

    void push()
    {
        if (segment == "constant")
        {
            fout << "mov x0, #" << sp << endl;
            fout << "mov x1, #" << element << endl;
            fout << "str x1, [x0]" << endl;
            fout << "add sp, sp, #1" << endl;
            sp = sp + 1;
        }
        else
        {
            if (segment == "local")
            {
                fout << "mov x0, #" << ram[2] << endl;
                cout << ram[2] << endl;
            }
            else if (segment == "argument")
            {
                fout << "mov x0, #" << ram[3] << endl;
            }
            else if (segment == "THIS")
            {
                fout << "mov x0, #" << ram[4] << endl;
            }
            else if (segment == "THAT")
            {
                fout << "mov x0, #" << ram[5] << endl;
            }
            fout << "ldr x1, [x0, " << element << "]" << endl;
            fout << "mov x2, sp" << endl;
            fout << "str x1, [x2]" << endl;
            fout << "add sp, sp, #1" << endl;
            sp++;
        }
    }

    void pop()
    {
        if (segment == "local")
        {
            fout << "mov x0, #" << ram[2] << endl;
        }
        else if (segment == "argument")
        {
            fout << "mov x0, #" << ram[3] << endl;
        }
        else if (segment == "THIS")
        {
            fout << "mov x0, #" << ram[4] << endl;
        }
        else if (segment == "THAT")
        {
            fout << "mov x0, #" << ram[5] << endl;
        }
        fout << "mov x1, #1" << endl;
        fout << "sub sp, sp, x1" << endl;
        fout << "ldr x1, [sp]" << endl;
        fout << "str x1, [x0, " << element << "]" << endl;
    }

    void add()
    {
        fout << "mov x0, #1" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp = sp - 1;
        fout << "ldr x1, [sp]" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp = sp - 1;
        fout << "ldr x2, [sp]" << endl;
        fout << "add x3, x1, x2" << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;
        sp = sp + 1;
    }

    void sub()
    {
        fout << "mov x0, #1" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp = sp - 1;
        fout << "ldr x1, [sp]" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp = sp - 1;
        fout << "ldr x2, [sp]" << endl;
        fout << "sub x3, x1, x2" << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;
        sp = sp + 1;
    }

    void equal()
    {
        fout << "mov x0, #1" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp--;
        fout << "ldr x1, [sp]" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp--;
        fout << "ldr x2, [sp]" << endl;

        uint32_t temp_true = true;
        uint32_t temp_false = false;
        int t_lb_counter_1;
        int t_lb_counter_2;

        fout << "cmp x1, x2" << endl;
        fout << "b.eq " << file_name << "_label" << label_counter << endl;
        t_lb_counter_1 = label_counter;
        label_counter = label_counter + 1;

        fout << "mov x3, #" << temp_false << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;

        fout << "b " << file_name << "_label" << label_counter << endl;
        t_lb_counter_2 = label_counter;
        label_counter = label_counter + 1;

        fout << file_name << "_label" << t_lb_counter_1 << ":" << endl;
        fout << "mov x3, #" << temp_true << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;

        fout << file_name << "_label" << t_lb_counter_2 << ":" << endl;
    }

    void less_than()
    {
        fout << "mov x0, #1" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp--;
        fout << "ldr x1, [sp]" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp--;
        fout << "ldr x2, [sp]" << endl;

        uint32_t temp_true = true;
        uint32_t temp_false = false;
        int t_lb_counter_1;
        int t_lb_counter_2;

        fout << "cmp x1, x2" << endl;
        fout << "b.lt " << file_name << "_label" << label_counter << endl;
        t_lb_counter_1 = label_counter;
        label_counter = label_counter + 1;

        fout << "mov x3, #" << temp_false << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;

        fout << "b " << file_name << "_label" << label_counter << endl;
        t_lb_counter_2 = label_counter;
        label_counter = label_counter + 1;

        fout << file_name << "_label" << t_lb_counter_1 << ":" << endl;
        fout << "mov x3, #" << temp_true << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;

        fout << file_name << "_label" << t_lb_counter_2 << ":" << endl;
    }

    void greater_than()
    {
        fout << "mov x0, #1" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp--;
        fout << "ldr x1, [sp]" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp--;
        fout << "ldr x2, [sp]" << endl;

        uint32_t temp_true = true;
        uint32_t temp_false = false;
        int t_lb_counter_1;
        int t_lb_counter_2;

        fout << "cmp x1, x2" << endl;
        fout << "b.gt " << file_name << "_label" << label_counter << endl;
        t_lb_counter_1 = label_counter;
        label_counter = label_counter + 1;

        fout << "mov x3, #" << temp_false << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;

        fout << "b " << file_name << "_label" << label_counter << endl;
        t_lb_counter_2 = label_counter;
        label_counter = label_counter + 1;

        fout << file_name << "_label" << t_lb_counter_1 << ":" << endl;
        fout << "mov x3, #" << temp_true << endl;
        fout << "str x3, [sp]" << endl;
        fout << "add sp, sp, x0" << endl;

        fout << file_name << "_label" << t_lb_counter_2 << ":" << endl;
    }

    void generate_label()
    {
        fout << name << ":" << endl;
    }

    void goto_label()
    {
        fout << "b " << name << endl;
    }

    void if_goto()
    {
        fout << "mov x0, #1" << endl;
        fout << "sub sp, sp, x0" << endl;
        sp = sp - 1;
        fout << "ldr x1, [sp, #0]" << endl;

        uint32_t temp_true = true;

        fout << "mov x2, #" << temp_true << endl;
        fout << "cmp x1, x2" << endl;
        fout << "b.eq " << name << endl;
    }

    void call()
    {
        called_functions.push(name);

        // local
        fout << "mov x0, #" << sp << endl;
        fout << "mov x1, #" << ram[2] << endl;
        fout << "str x1, [x0]" << endl;
        fout << "add sp, sp, #1" << endl;
        sp = sp + 1;

        // argument
        fout << "mov x0, #" << sp << endl;
        fout << "mov x1, #" << ram[3] << endl;
        fout << "str x1, [x0]" << endl;
        fout << "add sp, sp, #1" << endl;
        sp = sp + 1;

        // THIS
        fout << "mov x0, #" << sp << endl;
        fout << "mov x1, #" << ram[4] << endl;
        fout << "str x1, [x0]" << endl;
        fout << "add sp, sp, #1" << endl;
        sp = sp + 1;

        // THAT
        fout << "mov x0, #" << sp << endl;
        fout << "mov x1, #" << ram[5] << endl;
        fout << "str x1, [x0]" << endl;
        fout << "add sp, sp, #1" << endl;
        sp = sp + 1;

        // arg value updating
        uint32_t temp_5 = 4;
        uint32_t temp_1 = stoi(element);
        fout << "mov x0, #" << sp << endl;
        fout << "mov x1, #" << temp_5 << endl;
        fout << "mov x2, #" << temp_1 << endl;
        uint32_t addr_arg = 3;
        fout << "mov x3, #" << addr_arg << endl;
        fout << "sub x4, x0, x1" << endl;
        fout << "sub x4, x4, x2" << endl;
        fout << "str x4, [x3]" << endl;
        ram[3] = sp - temp_5 - temp_1;

        // local value updating (local = sp)
        fout << "mov x0, #" << sp << endl;
        uint32_t addr_local = 2;
        fout << "mov x1, #" << addr_local << endl;
        fout << "str x0, [x1]" << endl;
        ram[2] = sp;
        fout << "bl " << name << endl;
    }

    void function()
    {
        fout << name << ":" << endl;
        fout << "mov x0, #0" << endl;
        fout << "mov x1, #1" << endl;
        for (int f_temp = 0; f_temp < stoi(element); f_temp++)
        {
            fout << "mov x2, sp" << endl;
            fout << "str x0, [x2]" << endl;
            fout << "add sp, sp, x1" << endl;
            sp = sp + 1;
        }
    }

    void _return()
    {
        fout << "mov x1, #1" << endl;
        uint32_t temp_5 = 5;

        fout << "sub sp, sp, #1" << endl;
        sp = sp - 1;
        fout << "ldr x5, [sp, #0]" << endl; // x5 -> return value
        fout << "mov x2, #" << ram[3] << endl;
        fout << "str x5, [x2, #0]" << endl;
        fout << "add sp, x2, x1" << endl; // sp = arg + 1
        sp = ram[3] + 1;

        fout << "mov x2, #" << ram[2] << endl; // x2 -> arg
        temp_5 = 1;
        fout << "mov x3, #" << temp_5 << endl;
        fout << "sub x6, x2, x3" << endl;
        uint32_t addr_that = 5;
        fout << "mov x0, #" << addr_that << endl;
        fout << "str x6, [x0, #0]" << endl;
        ram[5] = ram[2] - 1;

        temp_5 = 2;
        fout << "mov x3, #" << temp_5 << endl;
        fout << "sub x6, x2, x3" << endl;
        uint32_t addr_this = 4;
        fout << "mov x0, #" << addr_this << endl;
        fout << "str x6, [x0, #0]" << endl;
        ram[4] = ram[2] - 2;

        temp_5 = 3;
        fout << "mov x3, #" << temp_5 << endl;
        fout << "sub x6, x2, x3" << endl;
        uint32_t addr_arg = 3;
        fout << "mov x0, #" << addr_arg << endl;
        fout << "str x6, [x0, #0]" << endl;
        ram[3] = ram[2] - 3;

        temp_5 = 4;
        fout << "mov x3, #" << temp_5 << endl;
        fout << "sub x6, x2, x3" << endl;
        uint32_t addr_local = 2;
        fout << "mov x0, #" << addr_local << endl;
        fout << "str x6, [x0, #0]" << endl;
        ram[2] = ram[2] - 4;

        fout << "bx lr" << endl;
    }
};

int parse()
{
    fin.open("input.vm");
    if (!fin)
    {
        cout << "Error opening file" << endl;
        return 0;
    }
    else
    {
        string line;
        fout << ".data" << endl;
        fout << "ram: .space 8000" << endl; // Reserve space for RAM
        fout << ".text" << endl;
        fout << ".global _start" << endl;
        fout << "_start:" << endl;
        while (!fin.eof())
        {
            getline(fin, line);
            VMToARM instruction;
            string temp, temp1;
            istringstream ss(line);
            ss >> temp;
            cout << temp << endl;
            if (temp == "push" || temp == "pop")
            {
                instruction.token_name = temp;
                temp1 = temp;
                ss >> temp;
                cout << temp << endl;
                instruction.segment = temp;
                ss >> temp;
                cout << temp << endl;
                instruction.element = temp;
                if (temp1 == "push")
                {
                    instruction.push();
                }
                else if (temp1 == "pop")
                {
                    instruction.pop();
                }
            }

            if (temp == "add" || temp == "sub" || temp == "eq" || temp == "gt" || temp == "lt" || temp == "and" || temp == "or" || temp == "not" || temp == "return")
            {
                instruction.token_name = temp;
                temp1 = temp;
                if (temp1 == "add")
                {
                    instruction.add();
                }
                else if (temp1 == "sub")
                {
                    instruction.sub();
                }
                else if (temp1 == "eq")
                {
                    instruction.equal();
                }
                else if (temp1 == "gt")
                {
                    instruction.greater_than();
                }
                else if (temp1 == "lt")
                {
                    instruction.less_than();
                }
            }

            if (temp == "label" || temp == "goto" || temp == "if-goto")
            {
                instruction.token_name = temp;
                if (temp == "label")
                {
                    ss >> temp;
                    instruction.name = temp;
                    instruction.generate_label();
                }
                else if (temp == "goto")
                {
                    ss >> temp;
                    instruction.name = temp;
                    instruction.goto_label();
                }
                else if (temp == "if-goto")
                {
                    ss >> temp;
                    instruction.name = temp;
                    instruction.if_goto();
                }
            }
            fout << endl;
            pc = pc + 1;
        }
    }
    return 1;
}

int main()
{
    for (int i = 0; i < 2000; i++)
    {
        ram.push_back(0);
    }
    ram[1] = 29;
    sp = ram[1];
    local = ram[2];
    arg = ram[3];
    _this = ram[4];
    that = ram[5];
    label_counter = 0;
    file_name = "input";
    fout.open("output.asm");
    parse();
}