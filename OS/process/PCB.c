#include "PCB.h"

PCB pcb_table[MAX_PROCESSES];
PCB *current_process = NULL;
PCB *ready_queue = NULL;