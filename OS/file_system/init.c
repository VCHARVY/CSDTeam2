#include "init.h"
#include "../drivers/include/vga.h"
File file_system[MAX_FILES];

void init_file_system() {
    for (int i = 0; i < MAX_FILES; i++) {
        file_system[i].used = 0;
    }
    print("File system initialized!\n");
}

int create_file(const char *name) {
    // Return file index
    for (int i = 0; i < MAX_FILES; i++) {
        if (!file_system[i].used) {
            strncpy(file_system[i].name, name, MAX_FILENAME_LEN);
            file_system[i].size = 0;
            file_system[i].used = 1;
            return i;
        }
    }
    return -1; // No free slots
}

// Write data to a file
int write_file(int index, const uint8_t *data, uint32_t size) {
    if (index < 0 || index >= MAX_FILES || !file_system[index].used) {
        return -1; // Invalid file index
    }
    if (size > MAX_FILE_SIZE) {
        return -2; // File size exceeds the limit
    }
    memcpy(file_system[index].data, data, size);
    file_system[index].size = size;
    return 0; // Success
}

// Read data from a file
int read_file(int index, uint8_t *buffer, uint32_t size) {
    if (index < 0 || index >= MAX_FILES || !file_system[index].used) {
        return -1; // Invalid file index
    }
    if (size > file_system[index].size) {
        size = file_system[index].size; // Adjust size to file size
    }
    memcpy(buffer, file_system[index].data, size);
    return size; // Return the number of bytes read
}

// Delete a file
int delete_file(const char *name) {
    for (int i = 0; i < MAX_FILES; i++) {
        if (file_system[i].used && strncmp(file_system[i].name, name, MAX_FILENAME_LEN) == 0) {
            file_system[i].used = 0; // Mark as unused
            return 0; // Success
        }
    }
    return -1; // File not found
}

// List all files
File* list_files() {
    // print("Files:\n");
    return file_system;
    // for (int i = 0; i < MAX_FILES; i++) {
    //     if (file_system[i].used) {
    //         print("  %s (size: %u bytes)\n", file_system[i].name, file_system[i].size);
    //     }
    // }
}

