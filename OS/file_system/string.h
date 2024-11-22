#pragma once
#include "../stdint.h"
#ifndef STRING_H
#define STRING_H

extern void strncpy(char *dest, const char *src, uint16_t n);
extern void memcpy(void *dest, const void *src, uint16_t n);
extern int strncmp(const char *s1, const char *s2, uint16_t n);
extern uint16_t strlen(const char *s);
#endif