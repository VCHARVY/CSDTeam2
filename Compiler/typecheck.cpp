#include "typecheck.h"

//RETURNS THE TYPE OF IDENTIFIER id USING lookup
// Adds '#' at the end if id is a function_name
string primaryExpression(string id) {
    sym_entry* n = lookup(id);
    if(n) {
        string s = n->type;
        return s;     
    }
    string temp = funcProtoLookup(id);  // temp contains return type of function named "id"
    // used because function definitions are not made in curr_table
    if(temp!=""){
        temp += "#";
    }
    return temp;
}

// returns type of constant expressions
string constantEx(int numType ){
    switch(numType){
        case 1: return "int";
        case 2: return "long";
        case 3: return "char";
        case 4: return "float";
        case 5: return "double";
        case 6: return "byte";
        case 7: return "short";
        case 8: return "NULL";
        case 9: return "boolean";
        default : return "default";
    }
}

// returns actual type of the id
// if func, removes FUNC_ from start
// if pointer, returns * from the back
// if int or char returns the same type name
string postfixExpression(string type_name, int rule_num) {
    switch(rule_num) {
        case 1: {
            if(type_name.back()=='*'){
                while(type_name.back()=='*'){
                    type_name = type_name.substr(0,type_name.length()-1);
                }
                return type_name;
            }
            return "";
        }
        case 2:{
            if(type_name.substr(0, 5)=="FUNC_")return type_name.substr(5, type_name.length() - 5); 
            return "";
        }
        case 3:{
            if(isInt(type_name) || type_name == "char")return type_name;
            return "";
        }
        default : return "";
    }   
}

string unaryExp(string op, string type){
    if(op=="+" || op=="-" || op=="~" ){
        if((isInt(type) || isFloat(type) || type=="char" )) return type;
        else return "";
    }
    else if(op=="!" && type == "boolean") return type;
    return "";
}

string mulExp(string a, string b, char op){
    if(op=='*'){
        if((isInt(a) || isFloat(a) || a=="char") && (isInt(b) || isFloat(b) || b=="char") ){
            if(isFloat(a) || isFloat(b) ) return "float";
            else return "int";
        }
    }
    else if(op == '/'){
        if((isInt(a) || isFloat(a) || a=="char") && (isInt(b) || isFloat(b) || b=="char") ){
            return "float";
        }
    }
    else if(op=='%'){
        if((isInt(a) || isFloat(a) || a=="char") && (isInt(b) || isFloat(b) || b=="char") ){
            if(isFloat(a) || isFloat(b) ) return "float";
            else return "int";
        }
    }
    return "";
}

string addExp(string a, string b){
    if((isInt(a) || isFloat(a) || a=="char") && (isInt(b) || isFloat(b) || b=="char") ){
        if(isFloat(a) || isFloat(b) ) return "float";
        else return "int";
    }    
    return "";
}

string shiftExp(string a, string b){
    if((isInt(a) || a=="char") && (isInt(b) || b=="char") ){
        return "int";
    }  
    return "";
}

string relExp(string a, string b){
    if((isInt(a) || isFloat(a) || a=="char") && (isInt(b) || isFloat(b) || b=="char") ) return "boolean";
    return "";
}

string bitExp(string a, string b){
    if((isInt(a) || a == "char" ) && (isInt(a) || a == "char") ) return "int";
    if(a == "boolean" && b == "boolean" ) return "boolean";
    return "";
}

string assignExp(string a, string b, string op){
    if(op=="="){
        if(a==b) return "ok";
        if(isInt(a) && isInt(b)){
            if(getSize(a) >= getSize(b)) return "ok";
            return "";
        }
        if(isFloat(a) && isFloat(b)){
            if(getSize(a) >= getSize(b)) return "ok";
            return "";
        }
        if(isFloat(a) && isInt(b)) return "ok";
        return "";
    }
    if(op == "*=" || op == "/=" || op == "%="){
        return assignExp(a,mulExp(a, b, op[0]),"=");
    }
    if(op == "+=" || op == "-="){
        return assignExp(a,addExp(a, b),"=");
    }
    if(op == ">>=" || op == "<<=" || op == ">>>=" ){
        return assignExp(a,shiftExp(a, b),"=");
    }
    if(op == "&=" || op == "|=" || op == "^="){
        return assignExp(a,bitExp(a, b),"=");
    }
    return "";
}

// done
int isInt(string type1){
   if(type1=="int") return 1;
   if(type1=="boolean")return 1;
   if(type1=="long") return 1;
   if(type1=="short") return 1;
   if(type1=="byte") return 1;
   if(isInt(type1.substr(type1.size()-3,type1.size())))return 1;
   return 0;
}

// done
bool isFloat (string type){
   if(type=="float" || type=="double") return 1;
   if(type.size()>=5 && isFloat(type.substr(type.size()-5,type.size())))return 1;
   return 0;
}
