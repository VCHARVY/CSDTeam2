#pragma once
#include "../../stdint.h"
#include "vga.h"
uint8_t inb(uint16_t port) ;

char get_keypress() ;
void simple_keyboard_driver() ;