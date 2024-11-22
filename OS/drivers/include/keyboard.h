#pragma once
#include "../../stdint.h"
#include "vga.h"
#define KEYBOARD_DATA_PORT 0x60

uint8_t inb(uint16_t port) ;

char get_keypress() ;
void simple_keyboard_driver() ;
char* get_string();