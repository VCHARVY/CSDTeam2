#include "drivers/include/vga.h"
#include "drivers/include/keyboard.h"
#include "process/process.h"
#include "file_system/init.h"
void kmain(void);
void terminal();
void print_nu(uint16_t num);
void test_process() {
    while(1) {
        print("Process 1 running!\n");
    }
}
int take_input(){
    while(1){
        char* str=get_string();
        if(strlen(str)>1){
            int num=0;
            for(int i=0;i<strlen(str)-1;i++){
                num=num*10+(str[i]-'0');
            }
            // print(str);
            // print("\n");
            // print_nu(num);
            return num;
        }
    }
}
void test_process2() {
    int n;
    print("Enter the number of elements\n");
    n=take_input();
    int sum=0;
    print("Sum of first ");
    print_nu(n);
    print(" numbers is ");
    for(int i=0;i<=n;i++){
        sum+=i;
    }
    print_nu(sum);
    print("\n");
    terminal();
}
void sort(){
    //NO NEED of this FUNCTION
    // int n;
    // print("Enter the number of elements\n");
    // n=take_input()[0]-'0';
    // while(n>0){
    //     char* c="0";
    //     c[0]=n+'0';
    //     print(c);
    //     break;
    // }
}
void print_file_system(){
    File *file_system = list_files();
    for (int i = 0; i < MAX_FILES; i++) {
        if (file_system[i].used) {
            print(file_system[i].name);
            print(" ");
        }
    }
    print("\n");
}
void print_nu(uint16_t num){
    char str[10];
    int i=0;
    str[0]='0';
    while(num>0){
        str[i]=num%10+'0';
        num/=10;
        i++;
    }
    str[i]='\0';
    for (int j = 0; j < i / 2; j++) {
        char temp = str[j];
        str[j] = str[i - j - 1];
        str[i - j - 1] = temp;
    }
    print(str);
}
void splitStringTo2DArray(char* s, char result[][20], int* wordCount) {
    int i = 0, start = 0, wordIndex = 0, charIndex = 0;
    uint16_t len = strlen(s);
    s[len-1]='\0';
    while (s[i] != '\0') {
        if (s[i] == ' ' || s[i + 1] == '\0') {
            if (s[i + 1] == '\0') i++;
            charIndex = 0;
            for (int j = start; j < i; j++) {
                result[wordIndex][charIndex++] = s[j];
            }
            result[wordIndex][charIndex] = '\0';
            wordIndex++;
            start = i + 1;
        }
        i++;
    }

    *wordCount = wordIndex;
}
void decode(char* str){
    char words[10][20]; 
    int wordCount = 0;
    print(str);

    splitStringTo2DArray(str, words, &wordCount);

    if(strncmp(words[0],"ls",2)==0){
        print_file_system();
    }
    else if(strncmp(words[0],"create",6)==0){
        int file1 = create_file(words[1]);
        print_nu(file1);
        if (file1 >= 0) {
            if(strlen(words[1])>16){
                print("File name too long\n");
            }
            print("Successfully created file");
            print(words[1]);
            print("\n");
        }
    }
    else if(strncmp(words[0],"delete",6)==0){
        int file1 = delete_file(words[1]);
        if (file1 == 0) {
            print("Successfully deleted file");
            print(words[1]);
            print("\n");
        }
    }
    else if(strncmp(words[0],"cat",3)==0){
        uint8_t buffer[MAX_FILE_SIZE];
        int idx=-1;
        for(int i=0;i<MAX_FILES;i++){
            if(file_system[i].used && strncmp(file_system[i].name,words[1],strlen(words[1]))==0 ){
                idx=i;
                break;
            }
        }
        if(idx==-1){
            print("File not found\n");
            return;
        }
        int bytes_read = read_file(idx, buffer, sizeof(buffer));
        if (bytes_read > 0) {
            buffer[bytes_read] = '\0'; 
            print("\n");
            print(buffer);
            print("\n");
        }
    }
    else if(strncmp(words[0],"write",5)==0){
        int idx=-1;
        for(int i=0;i<MAX_FILES;i++){
            if(file_system[i].used && strncmp(file_system[i].name,words[1],strlen(words[1]))==0 ){
                idx=i;
                break;
            }
        }
        if(idx==-1){
            print("File not found\n");
            return;
        }
        int val=write_file(idx, (const uint8_t *)words[2], strlen(words[2]));
        if (val >= 0) {
            print("Successfully wrote to file");
            print(words[1]);
            print("\n");
        }
        else if(val==-1){
            print("Max No of files exceeded\n");
        }
        else if(val==-2){
            print("File size exceeded the limit\n");
        }
    }
    else if(strncmp(words[0],"call",3)==0){
        print(words[1]);
        print("\n");
        if(strncmp(words[1],"1",1)==0){
            print("Calling process 1\n");
            PCB* process = create_process((uint32_t)test_process);
            schedule();
        }
        else if(strncmp(words[1],"2",1)==0){
            print("Calling process 2\n");
            PCB* process = create_process((uint32_t)test_process2);
            schedule();
        }
        else if(strncmp(words[1],"3",1)==0){
            print("Calling sort\n");
            sort();
        }
        else {
            print("Invalid process number\n");
        }
    }
    else if(strncmp(words[0],"clear",5)==0){
        Reset();
    }
    else{
        print("Command not found\n");
    }
}
void terminal(){
    int cnt=3;
    print("TinyOS> ");
    while(1){
        char *str = get_string();
        uint16_t len = strlen(str);
        if(len!=1){
            print("\n");
            decode(str);
            print("\nTinyOS> ");
        }
        else{
            continue;
        }
        // while(str[i]!='\0'){
        //     print_nu(i);
        //     print("\n");
        //     char str2[2]={str[i],'\0'};
        //     print(str2);
        //     i++;
        // }
    }
}
void kmain(void) {
    Reset();
    init_process_manager();
    init_file_system();
    create_file("test.txt");
    char* temp="Hello, world!\nBYE";
    write_file(0, temp, strlen(temp));
    terminal();


    // TEST CODE

    // PCB* process = create_process((uint32_t)test_process);
    // PCB* process2= create_process((uint32_t)test_process2);
    // if(!process || !process2){
    //     print("Process creation failed\n");
    // }
    // else{
    //     print("Processes created\n");
    // }

    // print("Starting process...\n");
    // while(1) {
    //     schedule();
    //     yield();
    // }
}