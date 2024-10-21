#pragma once
#include "../../stdint.h"
#include "vga.h"
#define COLOR8_BLACK 0
#define COLOR8_LIGHT_GRAY 7

#define WIDTH 80
#define HEIGHT 25

void print(const char* s);
void scrollUp();
void newLine();
void Reset();
void renderChar(char c, uint16_t x, uint16_t y);
bool testVGAMemory();