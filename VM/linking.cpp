#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

struct Symbol {
    std::string name;
    int offset;         // Offset within the file
    int virtualAddress; // Virtual address after relocation
};

struct ObjectFile {
    std::string fileName;
    std::vector<Symbol> symbols; // Symbols defined in this file
};

// VM Team class to perform symbol resolution and relocation
class VMTeamLinker {
public:
    void addObjectFile(const ObjectFile& objFile) {
        objectFiles.push_back(objFile);
    }

    void performLinking() {
        resolveSymbols();
        performRelocation();
    }

    void displaySymbolTable() const {
        std::cout << "Final Symbol Table:\n";
        for (const auto& [name, addr] : symbolTable) {
            std::cout << "Symbol: " << name << ", Virtual Address: " << addr << "\n";
        }
    }

private:
    std::vector<ObjectFile> objectFiles;
    std::unordered_map<std::string, int> symbolTable; // Map symbol names to virtual addresses
    int currentAddress = 0x1000; // Start of virtual address space

    void resolveSymbols() {
        std::cout << "Resolving symbols...\n";
        for (const auto& objFile : objectFiles) {
            for (const auto& symbol : objFile.symbols) {
                if (symbolTable.find(symbol.name) != symbolTable.end()) {
                    std::cerr << "Error: Symbol " << symbol.name << " is multiply defined.\n";
                    continue;
                }
                // Assign initial address based on file offset
                symbolTable[symbol.name] = currentAddress + symbol.offset;
            }
        }
    }

    void performRelocation() {
        std::cout << "Performing relocation...\n";
        for (auto& objFile : objectFiles) {
            for (auto& symbol : objFile.symbols) {
                // Update each symbol’s virtual address after relocation
                symbol.virtualAddress = symbolTable[symbol.name];
                currentAddress += 0x10; // Increment address for next symbol
            }
        }
    }
};

int main() {
    // Example object files and symbols
    ObjectFile file1 = {"file1.o", {{"funcA", 0x00}, {"varX", 0x04}}};
    ObjectFile file2 = {"file2.o", {{"funcB", 0x00}, {"varY", 0x08}}};

    // VM Team Linker
    VMTeamLinker vmLinker;
    vmLinker.addObjectFile(file1);
    vmLinker.addObjectFile(file2);

    // Perform linking tasks
    vmLinker.performLinking();
    vmLinker.displaySymbolTable();

    return 0;
}
//write down linker rules