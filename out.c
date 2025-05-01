#include "life.h"
extern volatile char* MAPPED_SCREEN;
void print(char matrix[SIZE][SIZE]) {
    char* addr = MAPPED_SCREEN;
    for (int i = 0; i < SIZE * 2; i++) {
        char buffer = 0;
        char mask = 0b00000001;
        for (int j = 0; j < 8; j++) {
            if (matrix[i][])
        }
        *addr = buffer;
        addr++;
    }
}