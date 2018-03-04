#include "strlen.h"

size_t strlen_utf(const char* s) {
    size_t length = 0;
    while (*s != 0) {
        if (((*s) >> 6 & 3) != 2) {
            length++;
        }
        s++;
    }
    return length;
}