#include "ast.h"

extern FILE *dotfile;

int NodeCounter = 0;

void beginAST(){
	fprintf(dotfile, "digraph AST {\n\tordering=out;\n");
}

void endAST(){
	fprintf(dotfile, "}\n");
}


void insertAttr(vector<data2> &v, treeNode* nod, string s, int flag){
	data2 d;
	d.node = nod;
	d.str = s;
	d.is_node = flag;
	v.push_back(d);
}

treeNode *makeleaf(string str){
	// cout << "WELCOME to Leaf: " << str << endl;
	//making leaf node and printing it in dot file
	
	string tmp = "";
	for(int i=0; i<str.length(); ++i){
		tmp+=str[i];
		if(str[i]=='\\') tmp+=str[i];
	}

    treeNode *node = new treeNode;
	node->node_id = ++NodeCounter;
	node->node_name = tmp;

	if(str[0]=='"'){
		string s = tmp.substr(1,tmp.length()-2);
		fprintf(dotfile, "\t%lu [label=\"\\\"%s\\\"\" shape=box style=filled color=\"dodgerblue\" fillcolor=\"lightyellow\"];\n", node->node_id, s.c_str());
	}
	else{
		fprintf(dotfile, "\t%lu [label=\"%s\" shape=box style=filled color=\"dodgerblue\" fillcolor=\"lightyellow\"];\n", node->node_id,node->node_name.c_str() );
	}
	// cout << "Returning from leaf: " << str << endl ;
	return node;
}

treeNode *makenode(string s, vector<data2> &v){
	//making node and printing it in dot file
	// cout << "WELCOME TO NODE: " << s << endl ;
	treeNode *node = new treeNode;
	node->node_name = s;
	node->node_id = ++NodeCounter;

	vector<int> op_id;
	for(int i = 0; i<v.size(); ++i){
		if(!v[i].is_node){
			int opid = ++NodeCounter;
			op_id.push_back(opid);
			if(v[i].str!="") fprintf(dotfile, "\t%lu [label=\"%s\"];\n", opid, v[i].str.c_str());
		}
	}
	fprintf(dotfile, "\t%lu [label=\"%s\"];\n", node->node_id, node->node_name.c_str());

	int j=0;
	for(int i=0; i<v.size(); ++i){
		// if string or node is NULL, dont print in dot
		if(v[i].is_node && v[i].node!=NULL) 
            fprintf(dotfile, "\t%lu -> %lu;\n", node->node_id, v[i].node->node_id);
		// cout << "Welcome to node : 2\n";
		if(!v[i].is_node){
			if(v[i].str!="") fprintf(dotfile, "\t%lu -> %lu;\n", node->node_id, op_id[j]);
			j++;
		}
	}
	// cout << "Returning from node: " << s << endl ;
	return node;
}
