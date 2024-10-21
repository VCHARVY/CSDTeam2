#pragma once

#include <bits/stdc++.h>
using namespace std;
#define ll long long
#define sym_file 0
#define sym_function 1
#define sym_block 2

typedef struct sym_entry{
	string type;
	int size;
	bool init;
	int offset;
	map<string, sym_entry* > * entry;
	struct desc { 
		string reg;
		bool stack;
		bool heap;
	} addr_descriptor;

	int heap_mem = 0;
	int next_use = -1;
	int is_derefer = 0;
	int isArray = 0;
	int size_of_pointed = 0;
	int is_global = 0;
	vector<string> func_args;

	vector<int> array_dims;
	string storage_class;
}sym_entry;

typedef map<string, sym_entry* > sym_table; 
typedef map<string, string> typ_table;

extern sym_table globalst;
extern map<sym_table*, sym_table*> parent_table;
extern map<string, pair<string,vector<string> > > func_arg;
extern int class_offset;
extern sym_table* curr_table;
extern sym_table* curr_classure;
extern stack<int> Goffset, Loffset, blockSz;
extern int avl;
extern typ_table typ_gst;  
extern map<typ_table*, typ_table*> typ_parent_table;
extern typ_table* curr_typ;

void symTable_init();
sym_entry* createEntry(string type, int size, bool init, int offset, sym_table*);
void makeSymbolTable(string name, string f_type,int flag);
void removeFuncProto();
void updSymbolTable(string id);
sym_entry* lookup(string id);
sym_entry* currLookup(string id);
string getType(string id);
void createStructTable();
int insertStructAttr(string attr, string type, int size, bool init);
int printStructTable(string class_name);
string StructAttrType(string class_name, string id);
int typeLookup(string class_name);
int currTypeLookup(string class_name);
int findTypeAttr(string , string );
void createParamList();
void insertSymbol(sym_table& table, string id, string type, int size, bool is_init, sym_table* ptr);
vector<string> getFuncArgs(string id);
void updInit(string id);
void insertFuncArg(string &func, vector<string> &arg, string &tp);
string getFuncType(string id);
string funcProtoLookup(string id);
void printSymbolTable(sym_table* table, string file_name);
int getSize(string id);
string lookupType(string a);
void clear_paramoffset();
void paramInsert(sym_table& table, string id, string type, int size, bool is_init, sym_table* ptr);
int func_local_size(string name);
sym_entry* retTypeAttrEntry(string class_name, string id, string class_var);
int getStructsize(string class_name);
void setGlobal();