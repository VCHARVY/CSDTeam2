#ifndef FONT_MAP_H
#define FONT_MAP_H
#include "../../stdint.h"

const uint8_t fontMap[128][8] = {
    [32] = { // ' '
        0b00000000,
        0b00000000,
        0b00000000,
        0b00000000,
        0b00000000,
        0b00000000,
        0b00000000,
        0b00000000,
    },
    // Uppercase A-Z
    [65] = { // 'A'
        0b00011000,
        0b00100100,
        0b01000010,
        0b01111110,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [66] = { // 'B'
        0b01111100,
        0b01000010,
        0b01000010,
        0b01111100,
        0b01000010,
        0b01000010,
        0b01111100,
        0b00000000,
    },
    [67] = { // 'C'
        0b00111110,
        0b01000000,
        0b01000000,
        0b01000000,
        0b01000000,
        0b01000000,
        0b00111110,
        0b00000000,
    },
    [68] = { // 'D'
        0b01111100,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01111100,
        0b00000000,
    },
    [69] = { // 'E'
        0b01111110,
        0b01000000,
        0b01000000,
        0b01111100,
        0b01000000,
        0b01000000,
        0b01111110,
        0b00000000,
    },
    [70] = { // 'F'
        0b01111110,
        0b01000000,
        0b01000000,
        0b01111100,
        0b01000000,
        0b01000000,
        0b01000000,
        0b00000000,
    },
    [71] = { // 'G'
        0b00111110,
        0b01000000,
        0b01000000,
        0b01001110,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000000,
    },
    [72] = { // 'H'
        0b01000010,
        0b01000010,
        0b01000010,
        0b01111110,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [73] = { // 'I'
        0b00111100,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00111100,
        0b00000000,
    },
    [74] = { // 'J'
        0b00011110,
        0b00000010,
        0b00000010,
        0b00000010,
        0b00000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [75] = { // 'K'
        0b01000010,
        0b01000100,
        0b01001000,
        0b01110000,
        0b01001000,
        0b01000100,
        0b01000010,
        0b00000000,
    },
    [76] = { // 'L'
        0b01000000,
        0b01000000,
        0b01000000,
        0b01000000,
        0b01000000,
        0b01000000,
        0b01111110,
        0b00000000,
    },
    [77] = { // 'M'
        0b01000010,
        0b01100110,
        0b01011010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [78] = { // 'N'
        0b01000010,
        0b01100010,
        0b01010010,
        0b01001010,
        0b01000110,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [79] = { // 'O'
        0b00111100,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [80] = { // 'P'
        0b01111100,
        0b01000010,
        0b01000010,
        0b01111100,
        0b01000000,
        0b01000000,
        0b01000000,
        0b00000000,
    },
    [81] = { // 'Q'
        0b00111100,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01010010,
        0b01001010,
        0b00111100,
        0b00000000,
    },
    [82] = { // 'R'
        0b01111100,
        0b01000010,
        0b01000010,
        0b01111100,
        0b01001000,
        0b01000100,
        0b01000010,
        0b00000000,
    },
    [83] = { // 'S'
        0b00111100,
        0b01000010,
        0b01000000,
        0b00111100,
        0b00000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [84] = { // 'T'
        0b01111110,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00000000,
    },
    [85] = { // 'U'
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [86] = { // 'V'
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00100100,
        0b00100100,
        0b00011000,
        0b00000000,
    },
    [87] = { // 'W'
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01011010,
        0b01100110,
        0b01000010,
        0b00000000,
    },
    [88] = { // 'X'
        0b01000010,
        0b00100100,
        0b00011000,
        0b00011000,
        0b00100100,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [89] = { // 'Y'
        0b01000010,
        0b00100100,
        0b00011000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00000000,
    },
        [90] = { // 'Z'
        0b01111110,
        0b00000010,
        0b00000100,
        0b00001000,
        0b00010000,
        0b00100000,
        0b01111110,
        0b00000000,
    },
    
    // Lowercase a-z
    [97] = { // 'a'
        0b00000000,
        0b00111100,
        0b00000010,
        0b00111110,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000000,
    },
    [98] = { // 'b'
        0b01000000,
        0b01000000,
        0b01011100,
        0b01100010,
        0b01000010,
        0b01000010,
        0b01111100,
        0b00000000,
    },
    [99] = { // 'c'
        0b00000000,
        0b00111100,
        0b01000000,
        0b01000000,
        0b01000000,
        0b00111100,
        0b00000000,
        0b00000000,
    },
    [100] = { // 'd'
        0b00000010,
        0b00000010,
        0b00111110,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000000,
    },
    [101] = { // 'e'
        0b00000000,
        0b00111100,
        0b01000010,
        0b01111110,
        0b01000000,
        0b00111100,
        0b00000000,
        0b00000000,
    },
    [102] = { // 'f'
        0b00001100,
        0b00010010,
        0b00010000,
        0b00111100,
        0b00010000,
        0b00010000,
        0b00010000,
        0b00000000,
    },
    [103] = { // 'g'
        0b00000000,
        0b00111110,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000010,
        0b01111100,
        0b00000000,
    },
    [104] = { // 'h'
        0b01000000,
        0b01000000,
        0b01011100,
        0b01100010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [105] = { // 'i'
        0b00001000,
        0b00000000,
        0b00111000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00111100,
        0b00000000,
    },
    [106] = { // 'j'
        0b00000100,
        0b00000000,
        0b00001100,
        0b00000100,
        0b00000100,
        0b00000100,
        0b00000100,
        0b00111000,
    },
    [107] = { // 'k'
        0b01000000,
        0b01000000,
        0b01000110,
        0b01001000,
        0b01110000,
        0b01001000,
        0b01000100,
        0b00000000,
    },
    [108] = { // 'l'
        0b00111000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00111100,
        0b00000000,
    },
    [109] = { // 'm'
        0b00000000,
        0b01110100,
        0b01001010,
        0b01001010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [110] = { // 'n'
        0b00000000,
        0b01011100,
        0b01100010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00000000,
    },
    [111] = { // 'o'
        0b00000000,
        0b00111100,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [112] = { // 'p'
        0b00000000,
        0b01111100,
        0b01000010,
        0b01000010,
        0b01111100,
        0b01000000,
        0b01000000,
        0b00000000,
    },
    [113] = { // 'q'
        0b00000000,
        0b00111110,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000010,
        0b00000010,
        0b00000000,
    },
    [114] = { // 'r'
        0b00000000,
        0b01011100,
        0b01100010,
        0b01000000,
        0b01000000,
        0b01000000,
        0b01000000,
        0b00000000,
    },
    [115] = { // 's'
        0b00000000,
        0b00111110,
        0b01000000,
        0b00111100,
        0b00000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [116] = { // 't'
        0b00010000,
        0b00010000,
        0b00111100,
        0b00010000,
        0b00010000,
        0b00010010,
        0b00001100,
        0b00000000,
    },
    [117] = { // 'u'
        0b00000000,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000000,
    },
    [118] = { // 'v'
        0b00000000,
        0b01000010,
        0b01000010,
        0b00100100,
        0b00100100,
        0b00011000,
        0b00011000,
        0b00000000,
    },
    [119] = { // 'w'
        0b00000000,
        0b01000010,
        0b01000010,
        0b01000010,
        0b01011010,
        0b01100110,
        0b01000010,
        0b00000000,
    },
    [120] = { // 'x'
        0b00000000,
        0b01000010,
        0b00100100,
        0b00011000,
        0b00011000,
        0b00100100,
        0b01000010,
        0b00000000,
    },
    [121] = { // 'y'
        0b00000000,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000010,
        0b00111100,
        0b00000000,
    },
    [122] = { // 'z'
        0b00000000,
        0b01111110,
        0b00000100,
        0b00001000,
        0b00010000,
        0b00100000,
        0b01111110,
        0b00000000,
    },
    //0-9
    [48] = { // '0'
        0b00111100,
        0b01000010,  
        0b01000010,
        0b01000010,
        0b01000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [49] = { // '1'
        0b00011000,
        0b00101000,
        0b01001000,
        0b00001000,
        0b00001000,
        0b00001000,
        0b00111100,
        0b00000000,
    },
    [50] = { // '2'
        0b00111100,
        0b01000010,
        0b00000010,
        0b00000100,
        0b00001000,
        0b00010000,
        0b01111110,
        0b00000000,
    },
    [51] = { // '3'
        0b00111100,
        0b01000010,
        0b00000010,
        0b00011100,
        0b00000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [52] = { // '4'
        0b00000100,
        0b00001100,
        0b00010100,
        0b00100100,
        0b01111110,
        0b00000100,
        0b00000100,
        0b00000000,
    },
    [53] = { // '5'
        0b01111110,
        0b01000000,
        0b01000000,
        0b01111100,
        0b00000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [54] = { // '6'
        0b00111100,
        0b01000010,
        0b01000000,
        0b01111100,
        0b01000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [55] = { // '7'
        0b01111110,
        0b00000010,
        0b00000100,
        0b00001000,
        0b00010000,
        0b00100000,
        0b00100000,
        0b00000000,
    },
    [56] = { // '8'
        0b00111100,
        0b01000010,
        0b01000010,
        0b00111100,
        0b01000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
    [57] = { // '9'
        0b00111100,
        0b01000010,
        0b01000010,
        0b00111110,
        0b00000010,
        0b01000010,
        0b00111100,
        0b00000000,
    },
};
// const uint8_t fontMap[2048] =
// {
// 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// 	0x7E, 0x81, 0xA5, 0x81, 0xBD, 0x99, 0x81, 0x7E,
// 	0x7E, 0xFF, 0xDB, 0xFF, 0xC3, 0xE7, 0xFF, 0x7E,
// 	0x6C, 0xFE, 0xFE, 0xFE, 0x7C, 0x38, 0x10, 0x00,
// 	0x10, 0x38, 0x7C, 0xFE, 0x7C, 0x38, 0x10, 0x00,
// 	0x38, 0x7C, 0x38, 0xFE, 0xFE, 0x92, 0x10, 0x7C,
// 	0x00, 0x10, 0x38, 0x7C, 0xFE, 0x7C, 0x38, 0x7C,
// 	0x00, 0x00, 0x18, 0x3C, 0x3C, 0x18, 0x00, 0x00,
// 	0xFF, 0xFF, 0xE7, 0xC3, 0xC3, 0xE7, 0xFF, 0xFF,
// 	0x00, 0x3C, 0x66, 0x42, 0x42, 0x66, 0x3C, 0x00,
// 	0xFF, 0xC3, 0x99, 0xBD, 0xBD, 0x99, 0xC3, 0xFF,
// 	0x0F, 0x07, 0x0F, 0x7D, 0xCC, 0xCC, 0xCC, 0x78,
// 	0x3C, 0x66, 0x66, 0x66, 0x3C, 0x18, 0x7E, 0x18,
// 	0x3F, 0x33, 0x3F, 0x30, 0x30, 0x70, 0xF0, 0xE0,
// 	0x7F, 0x63, 0x7F, 0x63, 0x63, 0x67, 0xE6, 0xC0,
// 	0x99, 0x5A, 0x3C, 0xE7, 0xE7, 0x3C, 0x5A, 0x99,
// 	0x80, 0xE0, 0xF8, 0xFE, 0xF8, 0xE0, 0x80, 0x00,
// 	0x02, 0x0E, 0x3E, 0xFE, 0x3E, 0x0E, 0x02, 0x00,
// 	0x18, 0x3C, 0x7E, 0x18, 0x18, 0x7E, 0x3C, 0x18, 
// 	0x66, 0x66, 0x66, 0x66, 0x66, 0x00, 0x66, 0x00, 
// 	0x7F, 0xDB, 0xDB, 0x7B, 0x1B, 0x1B, 0x1B, 0x00, 
// 	0x3E, 0x63, 0x38, 0x6C, 0x6C, 0x38, 0x86, 0xFC, 
// 	0x00, 0x00, 0x00, 0x00, 0x7E, 0x7E, 0x7E, 0x00, 
// 	0x18, 0x3C, 0x7E, 0x18, 0x7E, 0x3C, 0x18, 0xFF,
// 	0x18, 0x3C, 0x7E, 0x18, 0x18, 0x18, 0x18, 0x00,
// 	0x18, 0x18, 0x18, 0x18, 0x7E, 0x3C, 0x18, 0x00,
// 	0x00, 0x18, 0x0C, 0xFE, 0x0C, 0x18, 0x00, 0x00, 
// 	0x00, 0x30, 0x60, 0xFE, 0x60, 0x30, 0x00, 0x00, 
// 	0x00, 0x00, 0xC0, 0xC0, 0xC0, 0xFE, 0x00, 0x00, 
// 	0x00, 0x24, 0x66, 0xFF, 0x66, 0x24, 0x00, 0x00, 
// 	0x00, 0x18, 0x3C, 0x7E, 0xFF, 0xFF, 0x00, 0x00, 
// 	0x00, 0xFF, 0xFF, 0x7E, 0x3C, 0x18, 0x00, 0x00, 
// 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// 	0x18, 0x3C, 0x3C, 0x18, 0x18, 0x00, 0x18, 0x00,
// 	0x6C, 0x6C, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 
// 	0x6C, 0x6C, 0xFE, 0x6C, 0xFE, 0x6C, 0x6C, 0x00, 
// 	0x18, 0x7E, 0xC0, 0x7C, 0x06, 0xFC, 0x18, 0x00, 
// 	0x00, 0xC6, 0xCC, 0x18, 0x30, 0x66, 0xC6, 0x00,
// 	0x38, 0x6C, 0x38, 0x76, 0xDC, 0xCC, 0x76, 0x00,
// 	0x30, 0x30, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00,
// 	0x18, 0x30, 0x60, 0x60, 0x60, 0x30, 0x18, 0x00, 
// 	0x60, 0x30, 0x18, 0x18, 0x18, 0x30, 0x60, 0x00,
// 	0x00, 0x66, 0x3C, 0xFF, 0x3C, 0x66, 0x00, 0x00, 
// 	0x00, 0x18, 0x18, 0x7E, 0x18, 0x18, 0x00, 0x00, 
// 	0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x30,
// 	0x00, 0x00, 0x00, 0x7E, 0x00, 0x00, 0x00, 0x00,
// 	0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00,
// 	0x06, 0x0C, 0x18, 0x30, 0x60, 0xC0, 0x80, 0x00,
// 	0x7C, 0xCE, 0xDE, 0xF6, 0xE6, 0xC6, 0x7C, 0x00, 
// 	0x30, 0x70, 0x30, 0x30, 0x30, 0x30, 0xFC, 0x00, 
// 	0x78, 0xCC, 0x0C, 0x38, 0x60, 0xCC, 0xFC, 0x00, 
// 	0x78, 0xCC, 0x0C, 0x38, 0x0C, 0xCC, 0x78, 0x00, 
// 	0x1C, 0x3C, 0x6C, 0xCC, 0xFE, 0x0C, 0x1E, 0x00, 
// 	0xFC, 0xC0, 0xF8, 0x0C, 0x0C, 0xCC, 0x78, 0x00, 
// 	0x38, 0x60, 0xC0, 0xF8, 0xCC, 0xCC, 0x78, 0x00,
// 	0xFC, 0xCC, 0x0C, 0x18, 0x30, 0x30, 0x30, 0x00,
// 	0x78, 0xCC, 0xCC, 0x78, 0xCC, 0xCC, 0x78, 0x00, 
// 	0x78, 0xCC, 0xCC, 0x7C, 0x0C, 0x18, 0x70, 0x00, 
// 	0x00, 0x18, 0x18, 0x00, 0x00, 0x18, 0x18, 0x00, 
// 	0x00, 0x18, 0x18, 0x00, 0x00, 0x18, 0x18, 0x30, 
// 	0x18, 0x30, 0x60, 0xC0, 0x60, 0x30, 0x18, 0x00, 
// 	0x00, 0x00, 0x7E, 0x00, 0x7E, 0x00, 0x00, 0x00, 
// 	0x60, 0x30, 0x18, 0x0C, 0x18, 0x30, 0x60, 0x00,
// 	0x3C, 0x66, 0x0C, 0x18, 0x18, 0x00, 0x18, 0x00, 
// 	0x7C, 0xC6, 0xDE, 0xDE, 0xDC, 0xC0, 0x7C, 0x00, 
// 	0x30, 0x78, 0xCC, 0xCC, 0xFC, 0xCC, 0xCC, 0x00, 
// 	0xFC, 0x66, 0x66, 0x7C, 0x66, 0x66, 0xFC, 0x00, 
// 	0x3C, 0x66, 0xC0, 0xC0, 0xC0, 0x66, 0x3C, 0x00, 
// 	0xF8, 0x6C, 0x66, 0x66, 0x66, 0x6C, 0xF8, 0x00, 
// 	0xFE, 0x62, 0x68, 0x78, 0x68, 0x62, 0xFE, 0x00, 
// 	0xFE, 0x62, 0x68, 0x78, 0x68, 0x60, 0xF0, 0x00,
// 	0x3C, 0x66, 0xC0, 0xC0, 0xCE, 0x66, 0x3A, 0x00, 
// 	0xCC, 0xCC, 0xCC, 0xFC, 0xCC, 0xCC, 0xCC, 0x00, 
// 	0x78, 0x30, 0x30, 0x30, 0x30, 0x30, 0x78, 0x00, 
// 	0x1E, 0x0C, 0x0C, 0x0C, 0xCC, 0xCC, 0x78, 0x00, 
// 	0xE6, 0x66, 0x6C, 0x78, 0x6C, 0x66, 0xE6, 0x00, 
// 	0xF0, 0x60, 0x60, 0x60, 0x62, 0x66, 0xFE, 0x00, 
// 	0xC6, 0xEE, 0xFE, 0xFE, 0xD6, 0xC6, 0xC6, 0x00,
// 	0xC6, 0xE6, 0xF6, 0xDE, 0xCE, 0xC6, 0xC6, 0x00, 
// 	0x38, 0x6C, 0xC6, 0xC6, 0xC6, 0x6C, 0x38, 0x00, 
// 	0xFC, 0x66, 0x66, 0x7C, 0x60, 0x60, 0xF0, 0x00, 
// 	0x7C, 0xC6, 0xC6, 0xC6, 0xD6, 0x7C, 0x0E, 0x00, 
// 	0xFC, 0x66, 0x66, 0x7C, 0x6C, 0x66, 0xE6, 0x00,
// 	0x7C, 0xC6, 0xE0, 0x78, 0x0E, 0xC6, 0x7C, 0x00, 
// 	0xFC, 0xB4, 0x30, 0x30, 0x30, 0x30, 0x78, 0x00,
// 	0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xFC, 0x00, 
// 	0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x78, 0x30, 0x00,
// 	0xC6, 0xC6, 0xC6, 0xC6, 0xD6, 0xFE, 0x6C, 0x00, 
// 	0xC6, 0xC6, 0x6C, 0x38, 0x6C, 0xC6, 0xC6, 0x00, 
// 	0xCC, 0xCC, 0xCC, 0x78, 0x30, 0x30, 0x78, 0x00,
// 	0xFE, 0xC6, 0x8C, 0x18, 0x32, 0x66, 0xFE, 0x00,
// 	0x78, 0x60, 0x60, 0x60, 0x60, 0x60, 0x78, 0x00,
// 	0xC0, 0x60, 0x30, 0x18, 0x0C, 0x06, 0x02, 0x00,
// 	0x78, 0x18, 0x18, 0x18, 0x18, 0x18, 0x78, 0x00, 
// 	0x10, 0x38, 0x6C, 0xC6, 0x00, 0x00, 0x00, 0x00, 
// 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 
// 	0x30, 0x30, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 
// 	0x00, 0x00, 0x78, 0x0C, 0x7C, 0xCC, 0x76, 0x00, 
// 	0xE0, 0x60, 0x60, 0x7C, 0x66, 0x66, 0xDC, 0x00, 
// 	0x00, 0x00, 0x78, 0xCC, 0xC0, 0xCC, 0x78, 0x00,
// 	0x1C, 0x0C, 0x0C, 0x7C, 0xCC, 0xCC, 0x76, 0x00,
// 	0x00, 0x00, 0x78, 0xCC, 0xFC, 0xC0, 0x78, 0x00, 
// 	0x38, 0x6C, 0x64, 0xF0, 0x60, 0x60, 0xF0, 0x00, 
// 	0x00, 0x00, 0x76, 0xCC, 0xCC, 0x7C, 0x0C, 0xF8, 
// 	0xE0, 0x60, 0x6C, 0x76, 0x66, 0x66, 0xE6, 0x00, 
// 	0x30, 0x00, 0x70, 0x30, 0x30, 0x30, 0x78, 0x00, 
// 	0x0C, 0x00, 0x1C, 0x0C, 0x0C, 0xCC, 0xCC, 0x78, 
// 	0xE0, 0x60, 0x66, 0x6C, 0x78, 0x6C, 0xE6, 0x00,
// 	0x70, 0x30, 0x30, 0x30, 0x30, 0x30, 0x78, 0x00, 
// 	0x00, 0x00, 0xCC, 0xFE, 0xFE, 0xD6, 0xD6, 0x00, 
// 	0x00, 0x00, 0xB8, 0xCC, 0xCC, 0xCC, 0xCC, 0x00, 
// 	0x00, 0x00, 0x78, 0xCC, 0xCC, 0xCC, 0x78, 0x00, 
// 	0x00, 0x00, 0xDC, 0x66, 0x66, 0x7C, 0x60, 0xF0, 
// 	0x00, 0x00, 0x76, 0xCC, 0xCC, 0x7C, 0x0C, 0x1E, 
// 	0x00, 0x00, 0xDC, 0x76, 0x62, 0x60, 0xF0, 0x00, 
// 	0x00, 0x00, 0x7C, 0xC0, 0x70, 0x1C, 0xF8, 0x00,
// 	0x10, 0x30, 0xFC, 0x30, 0x30, 0x34, 0x18, 0x00, 
// 	0x00, 0x00, 0xCC, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 
// 	0x00, 0x00, 0xCC, 0xCC, 0xCC, 0x78, 0x30, 0x00, 
// 	0x00, 0x00, 0xC6, 0xC6, 0xD6, 0xFE, 0x6C, 0x00, 
// 	0x00, 0x00, 0xC6, 0x6C, 0x38, 0x6C, 0xC6, 0x00, 
// 	0x00, 0x00, 0xCC, 0xCC, 0xCC, 0x7C, 0x0C, 0xF8, 
// 	0x00, 0x00, 0xFC, 0x98, 0x30, 0x64, 0xFC, 0x00,
// 	0x1C, 0x30, 0x30, 0xE0, 0x30, 0x30, 0x1C, 0x00, 
// 	0x18, 0x18, 0x18, 0x00, 0x18, 0x18, 0x18, 0x00, 
// 	0xE0, 0x30, 0x30, 0x1C, 0x30, 0x30, 0xE0, 0x00, 
// 	0x76, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
// 	0x00, 0x10, 0x38, 0x6C, 0xC6, 0xC6, 0xFE, 0x00,
// 	0x7C, 0xC6, 0xC0, 0xC6, 0x7C, 0x0C, 0x06, 0x7C, 
// 	0x00, 0xCC, 0x00, 0xCC, 0xCC, 0xCC, 0x76, 0x00,
// 	0x1C, 0x00, 0x78, 0xCC, 0xFC, 0xC0, 0x78, 0x00, 
// 	0x7E, 0x81, 0x3C, 0x06, 0x3E, 0x66, 0x3B, 0x00,
// 	0xCC, 0x00, 0x78, 0x0C, 0x7C, 0xCC, 0x76, 0x00, 
// 	0xE0, 0x00, 0x78, 0x0C, 0x7C, 0xCC, 0x76, 0x00, 
// 	0x30, 0x30, 0x78, 0x0C, 0x7C, 0xCC, 0x76, 0x00,
// 	0x00, 0x00, 0x7C, 0xC6, 0xC0, 0x78, 0x0C, 0x38,
// 	0x7E, 0x81, 0x3C, 0x66, 0x7E, 0x60, 0x3C, 0x00,
// 	0xCC, 0x00, 0x78, 0xCC, 0xFC, 0xC0, 0x78, 0x00,
// 	0xE0, 0x00, 0x78, 0xCC, 0xFC, 0xC0, 0x78, 0x00, 
// 	0xCC, 0x00, 0x70, 0x30, 0x30, 0x30, 0x78, 0x00, 
// 	0x7C, 0x82, 0x38, 0x18, 0x18, 0x18, 0x3C, 0x00, 
// 	0xE0, 0x00, 0x70, 0x30, 0x30, 0x30, 0x78, 0x00, 
// 	0xC6, 0x10, 0x7C, 0xC6, 0xFE, 0xC6, 0xC6, 0x00, 
// 	0x30, 0x30, 0x00, 0x78, 0xCC, 0xFC, 0xCC, 0x00, 
// 	0x1C, 0x00, 0xFC, 0x60, 0x78, 0x60, 0xFC, 0x00,
// 	0x00, 0x00, 0x7F, 0x0C, 0x7F, 0xCC, 0x7F, 0x00,
// 	0x3E, 0x6C, 0xCC, 0xFE, 0xCC, 0xCC, 0xCE, 0x00, 
// 	0x78, 0x84, 0x00, 0x78, 0xCC, 0xCC, 0x78, 0x00, 
// 	0x00, 0xCC, 0x00, 0x78, 0xCC, 0xCC, 0x78, 0x00, 
// 	0x00, 0xE0, 0x00, 0x78, 0xCC, 0xCC, 0x78, 0x00, 
// 	0x78, 0x84, 0x00, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 
// 	0x00, 0xE0, 0x00, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 
// 	0x00, 0xCC, 0x00, 0xCC, 0xCC, 0x7C, 0x0C, 0xF8,
// 	0xC3, 0x18, 0x3C, 0x66, 0x66, 0x3C, 0x18, 0x00, 
// 	0xCC, 0x00, 0xCC, 0xCC, 0xCC, 0xCC, 0x78, 0x00, 
// 	0x18, 0x18, 0x7E, 0xC0, 0xC0, 0x7E, 0x18, 0x18, 
// 	0x38, 0x6C, 0x64, 0xF0, 0x60, 0xE6, 0xFC, 0x00, 
// 	0xCC, 0xCC, 0x78, 0x30, 0xFC, 0x30, 0xFC, 0x30, 
// 	0xF8, 0xCC, 0xCC, 0xFA, 0xC6, 0xCF, 0xC6, 0xC3, 
// 	0x0E, 0x1B, 0x18, 0x3C, 0x18, 0x18, 0xD8, 0x70, 
// 	0x1C, 0x00, 0x78, 0x0C, 0x7C, 0xCC, 0x76, 0x00,
// 	0x38, 0x00, 0x70, 0x30, 0x30, 0x30, 0x78, 0x00, 
// 	0x00, 0x1C, 0x00, 0x78, 0xCC, 0xCC, 0x78, 0x00, 
// 	0x00, 0x1C, 0x00, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 
// 	0x00, 0xF8, 0x00, 0xB8, 0xCC, 0xCC, 0xCC, 0x00, 
// 	0xFC, 0x00, 0xCC, 0xEC, 0xFC, 0xDC, 0xCC, 0x00, 
// 	0x3C, 0x6C, 0x6C, 0x3E, 0x00, 0x7E, 0x00, 0x00, 
// 	0x38, 0x6C, 0x6C, 0x38, 0x00, 0x7C, 0x00, 0x00,
// 	0x18, 0x00, 0x18, 0x18, 0x30, 0x66, 0x3C, 0x00, 
// 	0x00, 0x00, 0x00, 0xFC, 0xC0, 0xC0, 0x00, 0x00, 
// 	0x00, 0x00, 0x00, 0xFC, 0x0C, 0x0C, 0x00, 0x00, 
// 	0xC6, 0xCC, 0xD8, 0x36, 0x6B, 0xC2, 0x84, 0x0F, 
// 	0xC3, 0xC6, 0xCC, 0xDB, 0x37, 0x6D, 0xCF, 0x03,
// 	0x18, 0x00, 0x18, 0x18, 0x3C, 0x3C, 0x18, 0x00, 
// 	0x00, 0x33, 0x66, 0xCC, 0x66, 0x33, 0x00, 0x00,
// 	0x00, 0xCC, 0x66, 0x33, 0x66, 0xCC, 0x00, 0x00, 
// 	0x22, 0x88, 0x22, 0x88, 0x22, 0x88, 0x22, 0x88,
// 	0x55, 0xAA, 0x55, 0xAA, 0x55, 0xAA, 0x55, 0xAA, 
// 	0xDB, 0xF6, 0xDB, 0x6F, 0xDB, 0x7E, 0xD7, 0xED, 
// 	0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
// 	0x18, 0x18, 0x18, 0x18, 0xF8, 0x18, 0x18, 0x18,
// 	0x18, 0x18, 0xF8, 0x18, 0xF8, 0x18, 0x18, 0x18,
// 	0x36, 0x36, 0x36, 0x36, 0xF6, 0x36, 0x36, 0x36,
// 	0x00, 0x00, 0x00, 0x00, 0xFE, 0x36, 0x36, 0x36, 
// 	0x00, 0x00, 0xF8, 0x18, 0xF8, 0x18, 0x18, 0x18, 
// 	0x36, 0x36, 0xF6, 0x06, 0xF6, 0x36, 0x36, 0x36, 
// 	0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 0x36, 
// 	0x00, 0x00, 0xFE, 0x06, 0xF6, 0x36, 0x36, 0x36, 
// 	0x36, 0x36, 0xF6, 0x06, 0xFE, 0x00, 0x00, 0x00, 
// 	0x36, 0x36, 0x36, 0x36, 0xFE, 0x00, 0x00, 0x00,
// 	0x18, 0x18, 0xF8, 0x18, 0xF8, 0x00, 0x00, 0x00,
// 	0x00, 0x00, 0x00, 0x00, 0xF8, 0x18, 0x18, 0x18, 
// 	0x18, 0x18, 0x18, 0x18, 0x1F, 0x00, 0x00, 0x00, 
// 	0x18, 0x18, 0x18, 0x18, 0xFF, 0x00, 0x00, 0x00, 
// 	0x00, 0x00, 0x00, 0x00, 0xFF, 0x18, 0x18, 0x18, 
// 	0x18, 0x18, 0x18, 0x18, 0x1F, 0x18, 0x18, 0x18, 
// 	0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 
// 	0x18, 0x18, 0x18, 0x18, 0xFF, 0x18, 0x18, 0x18,
// 	0x18, 0x18, 0x1F, 0x18, 0x1F, 0x18, 0x18, 0x18, 
// 	0x36, 0x36, 0x36, 0x36, 0x37, 0x36, 0x36, 0x36, 
// 	0x36, 0x36, 0x37, 0x30, 0x3F, 0x00, 0x00, 0x00, 
// 	0x00, 0x00, 0x3F, 0x30, 0x37, 0x36, 0x36, 0x36, 
// 	0x36, 0x36, 0xF7, 0x00, 0xFF, 0x00, 0x00, 0x00, 
// 	0x00, 0x00, 0xFF, 0x00, 0xF7, 0x36, 0x36, 0x36, 
// 	0x36, 0x36, 0x37, 0x30, 0x37, 0x36, 0x36, 0x36, 
// 	0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x00,
// 	0x36, 0x36, 0xF7, 0x00, 0xF7, 0x36, 0x36, 0x36, 
// 	0x18, 0x18, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x00, 
// 	0x36, 0x36, 0x36, 0x36, 0xFF, 0x00, 0x00, 0x00, 
// 	0x00, 0x00, 0xFF, 0x00, 0xFF, 0x18, 0x18, 0x18, 
// 	0x00, 0x00, 0x00, 0x00, 0xFF, 0x36, 0x36, 0x36, 
// 	0x36, 0x36, 0x36, 0x36, 0x3F, 0x00, 0x00, 0x00, 
// 	0x18, 0x18, 0x1F, 0x18, 0x1F, 0x00, 0x00, 0x00,
// 	0x00, 0x00, 0x1F, 0x18, 0x1F, 0x18, 0x18, 0x18, 
// 	0x00, 0x00, 0x00, 0x00, 0x3F, 0x36, 0x36, 0x36, 
// 	0x36, 0x36, 0x36, 0x36, 0xFF, 0x36, 0x36, 0x36,
// 	0x18, 0x18, 0xFF, 0x18, 0xFF, 0x18, 0x18, 0x18, 
// 	0x18, 0x18, 0x18, 0x18, 0xF8, 0x00, 0x00, 0x00,
// 	0x00, 0x00, 0x00, 0x00, 0x1F, 0x18, 0x18, 0x18, 
// 	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
// 	0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 
// 	0xF0, 0xF0, 0xF0, 0xF0, 0xF0, 0xF0, 0xF0, 0xF0,
// 	0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 0x0F, 
// 	0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 
// 	0x00, 0x00, 0x76, 0xDC, 0xC8, 0xDC, 0x76, 0x00,
// 	0x00, 0x78, 0xCC, 0xF8, 0xCC, 0xF8, 0xC0, 0xC0,
// 	0x00, 0xFC, 0xCC, 0xC0, 0xC0, 0xC0, 0xC0, 0x00,
// 	0x00, 0x00, 0xFE, 0x6C, 0x6C, 0x6C, 0x6C, 0x00,
// 	0xFC, 0xCC, 0x60, 0x30, 0x60, 0xCC, 0xFC, 0x00,
// 	0x00, 0x00, 0x7E, 0xD8, 0xD8, 0xD8, 0x70, 0x00,
// 	0x00, 0x66, 0x66, 0x66, 0x66, 0x7C, 0x60, 0xC0,
// 	0x00, 0x76, 0xDC, 0x18, 0x18, 0x18, 0x18, 0x00,
// 	0xFC, 0x30, 0x78, 0xCC, 0xCC, 0x78, 0x30, 0xFC,
// 	0x38, 0x6C, 0xC6, 0xFE, 0xC6, 0x6C, 0x38, 0x00,
// 	0x38, 0x6C, 0xC6, 0xC6, 0x6C, 0x6C, 0xEE, 0x00,
// 	0x1C, 0x30, 0x18, 0x7C, 0xCC, 0xCC, 0x78, 0x00,
// 	0x00, 0x00, 0x7E, 0xDB, 0xDB, 0x7E, 0x00, 0x00,
// 	0x06, 0x0C, 0x7E, 0xDB, 0xDB, 0x7E, 0x60, 0xC0,
// 	0x38, 0x60, 0xC0, 0xF8, 0xC0, 0x60, 0x38, 0x00,
// 	0x78, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x00,
// 	0x00, 0x7E, 0x00, 0x7E, 0x00, 0x7E, 0x00, 0x00,
// 	0x18, 0x18, 0x7E, 0x18, 0x18, 0x00, 0x7E, 0x00,
// 	0x60, 0x30, 0x18, 0x30, 0x60, 0x00, 0xFC, 0x00,
// 	0x18, 0x30, 0x60, 0x30, 0x18, 0x00, 0xFC, 0x00,
// 	0x0E, 0x1B, 0x1B, 0x18, 0x18, 0x18, 0x18, 0x18,
// 	0x18, 0x18, 0x18, 0x18, 0x18, 0xD8, 0xD8, 0x70,
// 	0x18, 0x18, 0x00, 0x7E, 0x00, 0x18, 0x18, 0x00,
// 	0x00, 0x76, 0xDC, 0x00, 0x76, 0xDC, 0x00, 0x00,
// 	0x38, 0x6C, 0x6C, 0x38, 0x00, 0x00, 0x00, 0x00,
// 	0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00,
// 	0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00,
// 	0x0F, 0x0C, 0x0C, 0x0C, 0xEC, 0x6C, 0x3C, 0x1C,
// 	0x58, 0x6C, 0x6C, 0x6C, 0x6C, 0x00, 0x00, 0x00,
// 	0x70, 0x98, 0x30, 0x60, 0xF8, 0x00, 0x00, 0x00,
// 	0x00, 0x00, 0x3C, 0x3C, 0x3C, 0x3C, 0x00, 0x00,
// 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
// };

#endif