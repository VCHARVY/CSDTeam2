#include "process.h"
#include "PCB.h"
#include "../mem.h"
#include "../drivers/include/vga.h"
static uint32_t next_pid = 1;
static uint32_t* next_stack_top = (void*)0xF0000000;
#define STACK_SIZE 4096 
#define STACK_ALIGNMENT 16 
#define TIME_QUANTUM 2
uint32_t allocate_stack();
void init_process_manager() {
    for (int i = 0; i < MAX_PROCESSES; i++) {
        pcb_table[i].pid = 0;
        pcb_table[i].state = PROCESS_READY;
        pcb_table[i].next = NULL;
        pcb_table[i].time_used = 0;
    }
    ready_queue = NULL;
    current_process = NULL;
}

PCB* create_process(uint32_t entry_point) {
    // print("Creating process...\n");
    uint32_t temp=entry_point;
    PCB* pcb = NULL;
    for (int i = 0; i < MAX_PROCESSES; i++) {
        if (pcb_table[i].pid == 0) {
            pcb = &pcb_table[i];
            break;
        }
    }
    if (pcb == NULL) return NULL;
    pcb->pid = next_pid++;
    pcb->time_used=0;
    pcb->pc = entry_point;
    pcb->sp = allocate_stack();
    pcb->state = PROCESS_READY;
    pcb->next = NULL;
    if (ready_queue == NULL) {
        ready_queue = pcb;
    }
    else {
        PCB* temp = ready_queue;
        while (temp->next != NULL) {
            temp = temp->next;
        }
        temp->next = pcb;
    }

    return pcb;
}
void size(){
    PCB* temp=ready_queue;
    while(temp!=NULL){
        print("hi\n");
        temp=temp->next;
    }
}
// char* to_string(int num){
//     char str[10];
//     int i=0;
//     while(num>0){
//         char c=(num%10)+'0';
//         str[i++]=c;
//         num/=10;
//     }
//     //TODO :: reverse cheydam marcihpoku bro -> just testing it .
//     str[i]='\0';
//     return str;
// }
// void schedule() {
//     print("Scheduling...\n");
//     size();
//     if (ready_queue == NULL) return;

//     if (current_process == NULL) {
//         current_process = ready_queue;
//     } else {
//         current_process->state = PROCESS_READY;
//         current_process = current_process->next;
//         if (current_process == NULL) {
//             current_process = ready_queue;
//         }
//     }

//     current_process->state = PROCESS_RUNNING;
//     switch_context(current_process);
// }
uint32_t allocate_stack() {
    next_stack_top = (void*)((uint32_t)next_stack_top - STACK_SIZE);
    next_stack_top = (void*)((uint32_t)next_stack_top & ~(STACK_ALIGNMENT - 1));
    memset(next_stack_top, 0, STACK_SIZE);
    return ((uint32_t)next_stack_top + STACK_SIZE);
}
void print_num(uint32_t num,uint16_t base){
    char *c="0";
    if(num==0){
        print("0");
        return;
    }
    while(num>0){
        c[0]=num%base+'0';
        if(base==16){
            if((c[0]-'0')>9){
                c[0]-='0';
                c[0]+='A'-10;
            }
        }
        print(c);
        num/=base;
    }
}
void schedule() {
    if (ready_queue == NULL) return;
    PCB* next_process = NULL;
    // save_context();
    if (current_process == NULL) {
        next_process = ready_queue;
        ready_queue = ready_queue->next;
    } else {
        current_process->time_used++;
        if (current_process->time_used >= TIME_QUANTUM) {
            current_process->time_used = 0;  // Reset timer
            current_process->state = PROCESS_READY;
            next_process = ready_queue;
            if (next_process == NULL) {
                print("tried context switch !! NO Process exists\n");
                return;
            }
            else{
                PCB* temp = ready_queue;
                while (temp->next != NULL) {
                    temp = temp->next;
                }
                temp->next = current_process;
                current_process->next = NULL;
                ready_queue = next_process;
                ready_queue=ready_queue->next;
            }
        } else {
            print_num(current_process->time_used,10);
            print("\n");
            return;
        }
    }
    
    next_process->state = PROCESS_RUNNING;
    current_process = next_process;
    
    // print("\n");
    // print_num(current_process->pc,16);
    // print("\n");
    // print_num((uint32_t)current_process, 16);
    switch_context(current_process->pc);
}
void terminate_process(uint32_t pid) {
    PCB* prev = NULL;
    PCB* current = ready_queue;

    while (current != NULL) {
        if (current->pid == pid) {
            if (prev == NULL) {
                ready_queue = current->next;
            } else {
                prev->next = current->next;
            }
            current->pid = 0;
            current->state = PROCESS_READY;
            current->next = NULL;
            break;
        }
        prev = current;
        current = current->next;
    }
}

void yield() {
    if (current_process) {
        schedule();
    }
}

PCB* get_current_process() {
    return current_process;
}