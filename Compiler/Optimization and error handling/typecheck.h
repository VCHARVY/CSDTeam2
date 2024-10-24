#include "symTable.h"
#include <bits/stdc++.h>
using namespace std;

string primaryExpression(string id);
string constantEx(int numType );
string postfixExpression(string type_name, int rule_num);
string unaryExp(string op, string type);
string mulExp(string a, string b, char op);
string addExp(string a, string b);
string shiftExp(string a, string b);
string relExp(string a, string b);
string bitExp(string a, string b);
string assignExp(string a, string b, string op);
string condExp(string a,string b);
int isInt (string type1);
bool isFloat (string type);