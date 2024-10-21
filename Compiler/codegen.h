#pragma once
#include <bits/stdc++.h>
#include "3ac.h"
using namespace std;


void gen_data_section();
void starting_code();
void add_op(quad* instr);
void gen_func_label(quad* instr);
void genCode();
void update_reg_desc(string reg, qid* sym);
void initializeRegs();
void freeDeadTemp(int idx);

string get_mem_location(qid* sym, qid* sym2, int idx, int flag);
string getTemporaryReg(qid* sym, int idx);
string getReg(qid* sym, qid* result, qid* sym2, int idx);

void nextUse();
int is_integer(string sym);
void assign_op(quad* instr);
void findBasicBlocks();
void end_basic_block();
void sub_op(quad* instr);
void mul_op(quad* instr);
void div_op(quad* instr);
void mod_op(quad* instr);
void bitwise_or_op(quad* instr);
void bitwise_and_op(quad* instr);
void return_op(quad* instr);
void clear_regs();
void call_func(quad &instr);
void add_op(quad* instr);
void assign_op(quad* instr);
void comparison_op(quad* instr, string op);
void logic_and(quad* instr);
void logic_or(quad* instr);
void bitwise_op(quad* instr);
void unary_op(quad* instr);
void pointer_op(quad* instr);
void free_reg(string reg);
void ptr_op(quad* instr);
void member_access(quad* instr);
void array_op(quad* instr);
void goto_op(quad* instr);
void sizeof_op(quad* instr);
vector<int> findDeadCode();
void jumpOptimisation();
string char_to_int(string sym);
void print_global_data();
string get_type_size(string sym);