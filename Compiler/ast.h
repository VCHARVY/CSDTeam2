#pragma once
#include"3ac.h"
#include <bits/stdc++.h>
using namespace std;


typedef struct{
	int node_id;
	int size;
	string node_name;
	string type;
	int expType = 0;	// 1 -> Variable, 2 -> Array, 3-> Function, 4 -> Constant, 5 -> string  			 	
	int isInit=0;
	int intVal;
	double realVal;
	string strVal;
	char* tbval;
	int is_error = 0;

	string tempName;
	qid place;
	vector<int> truelist = {};
	vector<int> falselist = {};
	vector<int> breaklist = {};
	vector<int> continuelist = {};
	vector<int> nextlist = {};
	vector<int> caselist = {};
}treeNode;

typedef struct{
	string str;
	string type;
	int intVal;
	double realVal;
	string strVal;
}constants;

typedef struct{
	treeNode* node;
	string str;
	bool is_node;
}data2;

void beginAST();
void endAST();

void insertAttr(vector<data2>&, treeNode* , string , int );
treeNode *makeleaf(string);
treeNode *makenode(string , vector<data2>&);
