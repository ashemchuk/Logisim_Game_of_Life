#include "print.h"
void print(char buf[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        unsigned int mask = 0b0000000000000001;
        int ans = 0;
        for (int j = 0; j < SIZE; j++) {
            if (buf[i][j]) {
                ans |= mask;
            }
            mask <<= 1;
        }
        DISPLAY[i] = ans;
    }
}