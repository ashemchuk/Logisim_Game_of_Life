#include "ring_buffer.h"

#define RB_SIZE (SIZE * SIZE + 1)
typedef struct {
    Ceil buf[RB_SIZE];
    int read;
    int write;
    int count;
} TRingBuffer;
char isIn[SIZE][SIZE];
TRingBuffer RB;
int getCount() {
    return RB.count;
}
char isInRB(Ceil c) {
    return isIn[c.x][c.y];
}
void init() {
    RB.read = 0;
    RB.write = -1;
    RB.count = 0;
}

void push(Ceil c) {
    if (!isInRB(c)) {
        RB.write = (RB.write + 1) % RB_SIZE;
        RB.buf[RB.write] = c;
        RB.count++;
        isIn[c.x][c.y] = 1;
    }
}

Ceil pop() {
    Ceil c = { -1, -1};
    if (RB.count > 0) {
        c = RB.buf[RB.read];
        RB.read = (RB.read + 1) % RB_SIZE;
        RB.count--;
        isIn[c.x][c.y] = 0;
    }
    return c;
}
// #ifdef TEST
// int main(void) {

//     return 0;
// }
// #endif 