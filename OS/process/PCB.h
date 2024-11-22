#pragma once
#include "../stdint.h"

#define MAX_PROCESSES 10
#define NULL 0
typedef struct PCB {
    uint32_t pid;
    uint32_t pc;
    uint32_t sp;
    uint32_t state;            // 0 = ready, 1 = running, 2 = waiting
    struct PCB *next;
    uint32_t time_used;
    uint32_t esp;      // Stack pointer
    uint32_t eflags;   // Flags register
    uint32_t registers[8]; // General-purpose registers (pusha order)
                                //EAX, EBX, ECX, EDX, ESI, EDI, ESP, EBP
} PCB;

extern PCB pcb_table[MAX_PROCESSES];
extern PCB *current_process ;
extern PCB *ready_queue ;
extern void switch_context(uint32_t new_pc);
extern void save_context();
extern void restore_context();