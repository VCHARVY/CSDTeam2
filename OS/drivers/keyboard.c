#include "include/keyboard.h"
#define KEYBOARD_DATA_PORT 0x60

// Basic US QWERTY keyboard scancode to ASCII map
const char scancode_to_char[128] = {
    0, 27, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b', 
    '\t', 
    'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\n', 
    0,   // Control key
    'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', '`',
    0,   // Left shift
    '\\', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', 0,  // Right shift
    '*',
    0,  // Alt
    ' ',  // Space bar
    0,  // Caps lock
    0, 0, 0, 0, 0, 0, 0, 0, 0,  // F1 - F9 keys
    0, 0  // F10, F11 keys, etc.
};

// Function to read a byte from the specified I/O port
uint8_t inb(uint16_t port) {
    uint8_t ret;
    __asm__ __volatile__ ("inb %1, %0" : "=a"(ret) : "Nd"(port));
    return ret;
}

uint8_t is_key_released(uint8_t scancode) {
    return scancode & 0x80;
}

// Function to get a keypress from the keyboard
char get_keypress() {
    uint8_t scancode = inb(KEYBOARD_DATA_PORT);
    
    if (is_key_released(scancode)) {
        return 0;
    }
    
    return scancode_to_char[scancode];
}

void simple_keyboard_driver() {
    char key;
    uint8_t key_pressed = 0;
    
    print("Press keys, and they will be shown on screen:\n");

    while (1) {
        uint8_t scancode = inb(KEYBOARD_DATA_PORT);

        if (!is_key_released(scancode) && !key_pressed) {
            key_pressed = 1;  
            key = scancode_to_char[scancode];

            if (key) { 
                char str[2] = {key, '\0'};
                print(str);
            }
        }

        if (is_key_released(scancode)) {
            key_pressed = 0; 
        }
    }
}