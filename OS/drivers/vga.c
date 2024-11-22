#include "include/vga.h"
#include "include/font_map.h"
uint16_t column=0;
uint16_t line=0;
uint16_t* const vga=(uint16_t* const)0xB8000;
const uint16_t defaultColor=(COLOR8_BLACK<<12)|(COLOR8_LIGHT_GRAY<<8);
uint16_t currentColor=defaultColor;

void Reset(){
    line =0;
    column=0;
    currentColor=defaultColor;
    for(uint16_t y=0;y<HEIGHT;y++){
        for(uint16_t x=0;x<WIDTH;x++){
            vga[y*WIDTH+x]=' '|defaultColor;
        }
    }
}

void newLine(){
    column=0;
    line++;
    if(line>=HEIGHT){
        scrollUp();
        line=HEIGHT-1;
    }
}

void scrollUp(){
    for(uint16_t y=1;y<HEIGHT;y++){
        for(uint16_t x=0;x<WIDTH;x++){
            vga[(y-1)*WIDTH+x]=vga[y*WIDTH+x];
        }
    }
    for(uint16_t x=0;x<WIDTH;x++){
        vga[(HEIGHT-1)*WIDTH+x]=' '|defaultColor;
    }
}
void renderChar(char c, uint16_t x, uint16_t y) {
    //pass (NO need to implement)
}
void print(const char* s) {
    while (*s) {
        if (*s == '\n') {
            newLine();
        } 
        else if (*s == '\b') {
            if (column > 0) {
                column--;
            } else if (line > 0) {
                line--;
                column = WIDTH - 1;
            }
            vga[line * WIDTH + column] = ' ' | currentColor;
        } 
        else {
            if (column == WIDTH) {
                newLine();
            }
            // renderChar(*s, column , line );
            vga[line*WIDTH+column]=*s|currentColor;
            column++;
        }
        s++;
    }
}

bool testVGAMemory() {
    uint16_t original = vga[0];
    
    // Write a test value
    vga[0] = 'A' | (COLOR8_LIGHT_GRAY << 8);
    
    // Read it back
    bool result = (vga[0] == ('A' | (COLOR8_LIGHT_GRAY << 8)));
    
    // Restore the original state
    vga[0] = original;
    
    return result;
}