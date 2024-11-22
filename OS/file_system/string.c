#include "string.h"
void strncpy(char *dest, const char *src, uint16_t n) {
    uint16_t i;
    for (i = 0; i < n && src[i] != '\0'; i++) {
        dest[i] = src[i];
    }
    // Pad with null bytes if src is shorter than n
    for (; i < n; i++) {
        dest[i] = '\0';
    }
}

// Copy a fixed number of bytes from src to dest
void memcpy(void *dest, const void *src, uint16_t n) {
    uint8_t *d = (uint8_t *)dest;
    const uint8_t *s = (const uint8_t *)src;
    for (uint16_t i = 0; i < n; i++) {
        d[i] = s[i];
    }
}

// Compare two strings up to n characters
int strncmp(const char *s1, const char *s2, uint16_t n) {
    for (uint16_t i = 0; i < n; i++) {
        if (s1[i] != s2[i] || s1[i] == '\0' || s2[i] == '\0') {
            return (unsigned char)s1[i] - (unsigned char)s2[i];
        }
    }
    return 0;
}

// Get the length of a string
uint16_t strlen(const char *s) {
    uint16_t len = 0;
    while (s[len] != '\0') {
        len++;
    }
    return len;
}
