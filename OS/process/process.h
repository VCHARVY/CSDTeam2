#pragma once
#include "PCB.h"

// Process states
#define PROCESS_READY 0
#define PROCESS_RUNNING 1
#define PROCESS_WAITING 2

// Function declarations
void init_process_manager();
PCB* create_process(uint32_t entry_point);
void schedule();
void terminate_process(uint32_t pid);
void yield();
PCB* get_current_process();