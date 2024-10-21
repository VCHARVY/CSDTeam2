#include <fstream>
#include "3ac.h"

using namespace std;

vector<quad> code; 

long long counter = 0;

void emit(qid op, qid arg1, qid arg2, qid res, int idx){
    quad temp;
    temp.op = op;
    temp.arg1 = arg1;
    temp.arg2 = arg2;
    temp.res = res;
    temp.idx = idx;
    if(idx == -1) temp.idx = code.size();
    code.push_back(temp);
}

void backpatch(vector<int>& bplist, int target){
    for(int i=0;i<bplist.size(); i++){
        code[bplist[i]].idx = target;
    }
}


void casepatch(vector<int>& bplist, qid target){
    //backpatch for case statement

    for(int i=0;i<bplist.size(); i++){
        code[bplist[i]].arg1 = target;
    }
}

qid newtemp(string type){
    // creating temp variables
    string temp_var = "#V"+to_string(counter);
    counter++;
    insertSymbol(*curr_table, temp_var, type, getSize(type), 0, NULL);
    return qid(temp_var, lookup(temp_var));
}

int assign_exp(string op, string type, string type1,string type2, qid arg1, qid arg2){
    // emitting code for all type of assignment expressions
    string temp_op = "";
    qid sym_typ ;  
    qid sym_typ1;
    int flag1 = 0;
    int a;
    string str = op;
    str.pop_back();
    if(op != "="){
        temp_op = "" + op.substr(0, 1);    
        sym_typ = newtemp(type);    
    }
    else{
        sym_typ = arg2;
    }
    if(op == "<<=" ||op == ">>=")temp_op += temp_op;
    

    if(isInt(type1) && isInt(type2) ){
        temp_op += "int" ;
        if(op != "=")a = code.size(), emit(qid( temp_op ,lookup(str)),arg1 ,arg2, sym_typ, -1);
    }
    else if( isFloat(type1) && isInt(type2)){
        flag1 = 1;
        sym_typ1 = newtemp(type);
        temp_op += "real" ;
        a = code.size();
        emit(qid("inttoreal",NULL), arg2, qid("" , NULL) , sym_typ1, -1);
        if(op != "=")emit(qid( temp_op ,lookup(str)),arg1 ,sym_typ1 , sym_typ, -1);
    }
    else if( isFloat(type2) && isInt(type1)){
        flag1 = 1;
        sym_typ1 = newtemp(type);
        temp_op += "int" ;
        a = code.size();
        emit(qid("realtoint",NULL), arg2, qid("" , NULL) , sym_typ1, -1);
        if(op != "=")emit(qid( temp_op ,lookup(str)),arg1 ,sym_typ1 , sym_typ, -1);
    }
    else if(isFloat(type1) && isFloat( type2) ){
        temp_op += "real" ;
        if(op != "=")a = code.size(), emit(qid( temp_op ,lookup(str)),arg1 ,arg2, sym_typ, -1);
    }


    if(!(op == "=" && flag1 )){ a = code.size(); emit( qid ("=", lookup("=")), sym_typ, qid("", NULL), arg1, -1);}
    else emit( qid ("=", lookup("=")), sym_typ1, qid("", NULL), arg1, -1);

    return a;
}

void backpatch_rem(){
    // backpatching all the remaining goto to Function end
    int i,j;
    i = j = code.size()-1;
    i--;
    while(code[i].op.first.substr(0,5)!="FUNC_"){
        if(code[i].op.first =="GOTO" && code[i].idx==0)code[i].idx = j;
        i--;
        
    }
}

void print3AC(){
    ofstream tac_file;
    tac_file.open("intermediate_3ac.csv");
    for(int i=0;i<code.size(); i++){
        if(code[i].op.first.substr(0,5)=="FUNC_"){
            tac_file<<code[i].op.first.substr(5,code[i].op.first.size())<<endl;
            continue;
        }
        tac_file<<"   "<<code[i].op.first<<","<<code[i].arg1.first<<","<<code[i].arg2.first<<","<<code[i].res.first<<","<<code[i].idx<<","<<i<<endl;
    }
}
