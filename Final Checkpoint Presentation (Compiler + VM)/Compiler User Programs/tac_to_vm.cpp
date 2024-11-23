#include <bits/stdc++.h>
using namespace std;

map<string, string> op_map;
vector<vector<string>> tac;
vector<string> vmc;

map<string, pair<string, string>> constant, local, argument, temp;
int local_idx = 0, temp_idx = 0, arg_idx = 0, str_idx = 0;
map <string, int> strings;

map<string, pair<int, int>> fun_var_count;
string curr_fun_name, curr_ret_type;

void initialize(){
    op_map["+"] = "add";
    op_map["-"] = "sub";
    op_map["=="] = "eq";
    op_map[">"] = "gt";
    op_map["<"] = "lt";
    op_map["&"] = "and";
    op_map["|"] = "or";
    op_map["<="] = "le";
    op_map[">="] = "ge";
    op_map["!="] = "neq";
    op_map["*"] = "mul";
    op_map["/"] = "div";
    op_map["<<"] = "asl";
    op_map[">>"] = "asr"; 
    op_map["%"] = "mod";
}

vector<string> tokenize(string s){
    string temp = "";
    vector<string> tokens;

    for(int i=0; i<s.size(); i++){
        if(s[i] == ' '){
            tokens.push_back(temp);
            temp = "";
            while(i<s.size() && s[i] == ' ')
                i++;
            i--;
        }
        else{
            if(s[i] == '"'){
                string str = "";
                while(i<s.size() && s[i] != '\n')
                    str += s[i++];
                
                int l = 0;
                while(s[i] != '"'){
                    i--;
                    l++;
                }

                temp = str.substr(0, str.length()-l+1);
            }
            else
                temp += s[i];
        }
    }

    if(temp.size())
        tokens.push_back(temp);

    return tokens;
}

bool isOperator(string op){
    if(op_map.find(op) != op_map.end())
        return true;
    return false;
}

bool isNumber(string& str){
    for(char const &c: str){
        if(isdigit(c) == 0 and c != '.')
            return false;
    }
    return true;
}

pair<pair<string, string>, string> get_type(string var, string type){
    pair<pair<string, string>, string> temp_var;
    if(type == "STR"){
        temp_var.first.first = to_string(str_idx);
        temp_var.first.second = type;
        temp_var.second = "constant";
        return temp_var;
    }
    else if(local.find(var) != local.end()){
        temp_var.first.first = local[var].first;
        temp_var.first.second = local[var].second;
        temp_var.second = "local";
    }
    else if(argument.find(var) != argument.end()){
        temp_var.first.first = argument[var].first;
        temp_var.first.second = argument[var].second;
        temp_var.second = "argument";
    }
    else if(temp.find(var) != temp.end()){
        temp_var.first.first = temp[var].first;
        temp_var.first.second = temp[var].second;
        temp_var.second = "temp";
    }
    else if(constant.find(var) != constant.end()){
        temp_var.first.first = constant[var].first;
        temp_var.first.second = constant[var].second;
        temp_var.second = "constant";
    }
    else{
        if(isNumber(var)){
            temp_var.first.first = var;
            temp_var.first.second = "INT";
            temp_var.second = "constant";
        }
        else{
            local[var].first = to_string(local_idx);
            local[var].second = type;
            local_idx++;
            temp_var.first.first = local[var].first;
            temp_var.first.second = local[var].second;
            temp_var.second = "local";
        }
    }
    return temp_var;
}

void conversion() {
    for(int i=0; i<tac.size(); i++){
        //lables
        if(tac[i].size() == 1 and tac[i][0][tac[i][0].size()-1] == ':'){
            string code = "";
            if(tac[i][0][0] == '#'){
                code += "label ";
                code += tac[i][0];
                code.pop_back();
                vmc.push_back(code);
            }
            else if(tac[i][0] == "end:"){
                fun_var_count[curr_fun_name] = {local_idx, temp_idx};
                if(curr_ret_type == "void"){
                    vmc.push_back("push constant 0 INT");
                    vmc.push_back("return");
                }
                local_idx = 0;
                temp_idx = 0;
                local.clear();
                argument.clear();
                temp.clear();
            }
        }

        if(tac[i].size() > 1){
            //arithmatic operations
            if(tac[i].size() == 6 and tac[i][1] == "=" and isOperator(tac[i][3])){
                auto a = get_type(tac[i][0], tac[i][5]);
                auto b = get_type(tac[i][2], tac[i][5]);
                auto c = get_type(tac[i][4], tac[i][5]);

                vmc.push_back("push " + b.second + " " + b.first.first + " " + b.first.second);
                vmc.push_back("push " + c.second + " " + c.first.first + " " + c.first.second);
                vmc.push_back(op_map[tac[i][3]] + " " + tac[i][5]);
                vmc.push_back("pop " + a.second + " " + a.first.first + " " + a.first.second);
            }
            else if(tac[i].size()==2){
                //goto
                if(tac[i][0] == "GOTO"){
                    vmc.push_back("goto " + tac[i][1]);
                }
                //function definition
                else if(tac[i][0][tac[i][0].size()-1] == ':'){
                    vmc.push_back("function " + tac[i][0].substr(0, tac[i][0].size()-1) + " " + tac[i][1]);
                    curr_fun_name = tac[i][0].substr(0, tac[i][0].size()-1);
                    curr_ret_type = tac[i][1];
                }
            }
            else if(tac[i].size()==3){
                //return statement
                if(tac[i][0] == "return"){
                    auto a = get_type(tac[i][1], tac[i][2]);
                    vmc.push_back("push " + a.second + " " + a.first.first + " " + a.first.second);
                    vmc.push_back("return");
                }
                else if(tac[i][0] == "-"){
                    //variable declaration
                    if(tac[i][1] == "STR") continue;
                    if(tac[i].size() == 3){
                        local[tac[i][2]].first = to_string(local_idx++);
                        local[tac[i][2]].second = tac[i][1];
                    }
                }
                else if(tac[i][0] == "param"){
                    //parameters
                    auto a = get_type(tac[i][1], tac[i][2]);
                    vmc.push_back("push " + a.second + " " + a.first.first + " " + a.first.second);
                }
                else if(tac[i][0] == "input"){
                    //input
                    auto a = get_type(tac[i][1], tac[i][2]);
                    vmc.push_back("input " + a.first.second);
                    vmc.push_back("pop " + a.second + " " + a.first.first + " " + a.first.second);
                }
                else if(tac[i][0] == "output"){
                    //output
                    auto a = get_type(tac[i][1], tac[i][2]);
                    vmc.push_back("push " + a.second + " " + a.first.first + " " + a.first.second);
                    vmc.push_back("print " + tac[i][2]);
                }
            }
            else if(tac[i].size() == 4){
                if(tac[i][1] == "arg"){
                    //arguments of functions
                    argument[tac[i][3]].first = to_string(arg_idx++);
                    argument[tac[i][3]].second = tac[i][2];
                }
                else if(tac[i][0] == "="){
                    //object declaration
                    
                }
                else {
                    auto a = get_type(tac[i][0], tac[i][3]);
                    auto b = get_type(tac[i][2], tac[i][3]);
                    if(b.second == "constant"){
                        vmc.push_back("push " + b.second + " " + tac[i][2] + " " + b.first.second);
                    }
                    else{
                        vmc.push_back("push " + b.second + " " + b.first.first + " " + b.first.second);
                    }
                    vmc.push_back("pop " + a.second + " " + a.first.first + " " + a.first.second);
                }

            }
            else if(tac[i].size() == 5){
                // unary operations : t0 = - t1 INT
                auto a = get_type(tac[i][0], tac[i][4]);
                auto b = get_type(tac[i][3], tac[i][4]);

                vmc.push_back("push " + b.second + " " + b.first.first + " " + a.first.second);
                if(tac[i][2] == "-")
                    vmc.push_back("neg " + tac[i][4]);
                else
                    vmc.push_back("not " + tac[i][4]);
                vmc.push_back("pop " + a.second + " " + a.first.first + " " + a.first.second);
            }
            else if(tac[i].size() == 6){
                if(tac[i][2] == "@call"){
                    vmc.push_back("call " + tac[i][3] + " " + tac[i][5]);
                    auto a = get_type(tac[i][0], tac[i][4]);
                    vmc.push_back("pop " + a.second + " " + a.first.first + " " + a.first.second);
                }
                else if(tac[i][3] == "["){
                    //array declarations
                    local[tac[i][2]].first = to_string(local_idx);
                    local_idx += stoi(tac[i][4]);
                    local[tac[i][2]].second = tac[i][1];
                }
            }
            else if(tac[i].size() == 7){
                if(tac[i][1] == "["){
                    // arr [ 8 ] = @t0 INT
                    auto a = get_type(tac[i][5], tac[i][6]);
                    auto b = get_type(tac[i][2], "INT");
                    vmc.push_back("push " + a.second + " " + a.first.first + " " + a.first.second);

                    vmc.push_back("push constant " + local[tac[i][0]].first + " INT");
                    vmc.push_back("push constant " + local[tac[i][0]].first + " INT");
                    vmc.push_back("push constant " + local[tac[i][0]].first + " INT");
                    vmc.push_back("push constant " + local[tac[i][0]].first + " INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");

                    vmc.push_back("add INT");
                    // vmc.push_back("pop pointer 0");
                    vmc.push_back("pop that 0 " + tac[i][6]);
                }
                else if(tac[i][3] =="["){
                    // arr [ c ] = @t0 INT
                    auto a = get_type(tac[i][0], tac[i][6]);
                    auto b = get_type(tac[i][4], "INT");

                    vmc.push_back("push constant " + local[tac[i][2]].first + " INT");
                    vmc.push_back("push constant " + local[tac[i][2]].first + " INT");
                    vmc.push_back("push constant " + local[tac[i][2]].first + " INT");
                    vmc.push_back("push constant " + local[tac[i][2]].first + " INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("push " + b.second + " " + b.first.first + " INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");
                    vmc.push_back("add INT");

                    vmc.push_back("add INT");
                    // vmc.push_back("pop pointer 0");
                    vmc.push_back("pop that 0 " + tac[i][6]);
                    vmc.push_back("pop " + a.second + " " + a.first.first + " " + tac[i][6]);
                }
                else {
                    //if t0 goto L1 else goto L2
                    auto a = get_type(tac[i][0], "INT");
                    vmc.push_back("push " + a.second + " " + a.first.first + " " + a.first.second);
                    vmc.push_back("if-goto " + tac[i][3]);
                    vmc.push_back("goto " + tac[i][6]);
                }
            }
        }
    }
}

void print_vm(){
    for(int i=0; i<vmc.size(); i++){
        if(vmc[i].substr(0,8) == "function"){
            vector<string> temp;
            temp = tokenize(vmc[i]);
            cout << temp[0] + " " + temp[1] + " " + to_string(fun_var_count[temp[1]].first) + " " + to_string(fun_var_count[temp[1]].second) << " " << temp[2] << endl;
        }
        else
            cout << vmc[i] << endl;
    }
}

int main(int argc, char* argv[]){
    fstream newfile;
    newfile.open(argv[1],ios::in);
    if (newfile.is_open()){
        string tp;
        while(getline(newfile, tp)){
            vector<string> temp;
            temp = tokenize(tp);
            tac.push_back(temp);
        }
        newfile.close();
    }
    initialize();
    conversion();
    print_vm();
    return 0;
}