#include "include/keyboard.h"
volatile uint8_t ctrl_pressed = 0;
volatile uint8_t shift_pressed = 0;
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
const char scancode_to_char2[128] = {
    0, 27, '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '\b', 
    '\t', 
    'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '{', '}', '\n',
    0,   // Control key
    'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', ':', '\"', '~',
    0,   // Left shift
    '|', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '<', '>', '?', 0,  // Right shift
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
    
    // print("Press keys, and they will be shown on screen:\n");

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

char* get_string() {
    char key;
    uint8_t key_pressed = 0;
    
    // print("Press keys, and they will be shown on screen:\n");
    static char tot_str[100];
    uint16_t i=0;
    while (1) {
        uint8_t scancode = inb(KEYBOARD_DATA_PORT);
        if (scancode == 0x1D) {  // Left Ctrl press
            ctrl_pressed = 1;
        } else if (scancode == (0x1D | 0x80)) {  // Left Ctrl release
            ctrl_pressed = 0;
        }
        if(scancode == 0x2A) {  // Left shift press
            shift_pressed = 1;
        } else if (scancode == (0x2A | 0x80)) {  // Left shift release
            shift_pressed = 0;
        }
        if (!is_key_released(scancode) && !key_pressed) {
            key_pressed = 1;
            key = scancode_to_char[scancode];
            if(shift_pressed){
                key = scancode_to_char2[scancode];
            }
            if (key) { 
                tot_str[i++]=key;
                if(ctrl_pressed){
                    if(key=='-'){
                        // print("dec font size\n");
                        // decrease_font_size();
                        return "";
                    }
                    else if(key=='='){
                        // print("inc font size\n");
                        // increase_font_size();
                        return "";
                    }
                }
                //backspace
                if(key==8){
                    if(i>0){
                        i--;
                        tot_str[i]='\0';
                    }
                }
                char str[2] = {key, '\0'};
                if(key==10){
                    tot_str[i]='\0';
                    return tot_str;
                }
                print(str);
            }
        }
        if (is_key_released(scancode)) {
            key_pressed = 0; 
        }
    }
    return "\0";
}