#pragma once
#include "../stdint.h"
#include "string.h"
#ifndef FILE_SYSTEM_H
#define FILE_SYSTEM_H
#define MAX_FILES 10
#define MAX_FILENAME_LEN 16
#define MAX_FILE_SIZE 256

typedef struct {
    char name[MAX_FILENAME_LEN];
    uint8_t data[MAX_FILE_SIZE];
    uint32_t size;
    uint8_t used; 
} File;

extern File file_system[MAX_FILES];
void init_file_system();
int create_file(const char *name);
int write_file(int index, const uint8_t *data, uint32_t size) ;
int read_file(int index, uint8_t *buffer, uint32_t size);
int delete_file(const char *name);
File* list_files();
#endif