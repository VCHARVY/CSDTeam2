#pragma once

#include "typecheck.h"
#include <bits/stdc++.h>

using namespace std;

typedef pair <string, sym_entry*> qid;

typedef struct quadruple{
    qid op;
    qid arg1;
    qid arg2;
    qid res;
    int idx;
} quad;

// extern map<int , string> gotoLabels;

void emit(qid, qid , qid , qid , int );
void backpatch(vector<int>& , int);
qid newtemp(string );
int assign_exp(string op, string type, string type1,string type2, qid arg1, qid arg2);
void casepatch(vector<int>& bplist, qid target);
void print3AC();
void backpatch_rem();
