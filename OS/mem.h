#pragma once
#include "stdint.h"

void* memset(void* dest, int val, uint32_t count) {
    unsigned char* ptr = (unsigned char*)dest;
    while (count-- > 0) {
        *ptr++ = val;
    }
    return dest;
}