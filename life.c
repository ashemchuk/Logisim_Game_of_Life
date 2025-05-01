#include "life.h"
// #include "ring_buffer.h"
// void int2array(int src, int* dest) {
//     int mask = 0b1000000000000000;
//     int i = 0;
//     while (mask != 0 && i < SIZE) {
//         dest[i] = src & mask;
//         mask = mask >> 1;
//         i++;
//     }
// }
// void pushCeil (int i, int j) {
//     push(&(Ceil) {i, j});
//     push(&(Ceil) {i, (j + 1) % SIZE});
//     push(&(Ceil) {i, (j - 1) % SIZE});
//     push(&(Ceil) {(i + 1) % SIZE, j});
//     push(&(Ceil) {(i + 1) % SIZE, (j + 1) % SIZE});
//     push(&(Ceil) {(i + 1) % SIZE, (j - 1) % SIZE});
//     push(&(Ceil) {(i - 1) % SIZE, j});
//     push(&(Ceil) {(i - 1) % SIZE, (j + 1) % SIZE});
//     push(&(Ceil) {(i - 1) % SIZE, (j - 1) % SIZE});
// }

// void NextGen (char read[SIZE][SIZE], char write[SIZE][SIZE]) {
//     int cnt = getCount();
//     while (cnt > 0) {
//         cnt--;
//         Ceil c = pop();
//         int neighbours = 0;
//         int i = c.x;
//         int j = c.y;
//         neighbours += read[(i + 1) % SIZE][j % SIZE];
//         neighbours += read[(i - 1) % SIZE][j % SIZE];
//         neighbours += read[i % SIZE][(j + 1) % SIZE];
//         neighbours += read[i % SIZE][(j - 1) % SIZE];
//         neighbours += read[(i + 1) % SIZE][(j + 1) % SIZE];
//         neighbours += read[(i - 1) % SIZE][(j - 1) % SIZE];
//         neighbours += read[(i + 1) % SIZE][(j - 1) % SIZE];
//         neighbours += read[(i - 1) % SIZE][(j + 1) % SIZE];

//         char keepAlive = read[i][j] == 1 && (neighbours == 2 || neighbours == 3);
//         char newLife = read[i][j] == 0 && neighbours == 3;
//         write[i][j] = keepAlive | newLife;

//         if (read[i][j] != write[i][j] || write[i][j]) {
//             pushCeil(i, j);
//         }
//     }
// }

// void initFstGen(char read[SIZE][SIZE]) {
//     init();
//     for (int i = 0; i < SIZE; i++) {
//         for (int j = 0; j < SIZE; j++) {
//             if (read[i][j] == 1) {
//                 pushCeil(i, j);
//             }
//         }
//     }
// }
void nextGeneration(char read[SIZE][SIZE], char write[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            int neighbours = 0;
            neighbours += read[(i + 1) % SIZE][j % SIZE];
            neighbours += read[(i - 1) % SIZE][j % SIZE];
            neighbours += read[i % SIZE][(j + 1) % SIZE];
            neighbours += read[i % SIZE][(j - 1) % SIZE];
            neighbours += read[(i + 1) % SIZE][(j + 1) % SIZE];
            neighbours += read[(i - 1) % SIZE][(j - 1) % SIZE];
            neighbours += read[(i + 1) % SIZE][(j - 1) % SIZE];
            neighbours += read[(i - 1) % SIZE][(j + 1) % SIZE];

            char keepAlive = read[i][j] == 1 && (neighbours == 2 || neighbours == 3);
            char newLife = read[i][j] == 0 && neighbours == 3;
            write[i][j] = keepAlive | newLife;
        }
    }
}