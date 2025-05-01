#ifndef LIFE_H
#define LIFE_H

#define SIZE 16

typedef struct {
    char x;
    char y;
} Ceil;

void NextGen (char read[SIZE][SIZE], char write[SIZE][SIZE]);
void initFstGen(char read[SIZE][SIZE]);
#endif 