int countNeighbours_1(char word) {
    return !(word & 0b00000100) && (word & 0b00000010) && (word & 0b00000001 || word & 0b00001000);
}
int countNeighbours_4(int word) {
    return (((word & 0b0100010001000100) ^ 0b0100010001000100) >> 2) &
    ((word & 0b0010001000100010) >> 1) &
    ((word & 0b0001000100010001) | (word & 0b1000100010001000) >> 3);
}


#ifdef BITWISE_NEIGHBOURS_TEST
#include <stdio.h>
#include <assert.h>
void print_b(int word) {
    for (int i = 15; i >= 0; i--) {
        printf("%d", (word >> i) & 1);
    }
    printf("\n");
}
int countNeighbours_default(int word) {
    int mask = 0b1111000000000000;
    int ans = 0;
    for (int i = 3; i >= 0; i--) {
        int cur = (word & mask) >> (i * 4);
        int alive = cur & 0b0000000000001000;
        int count = cur & 0b0000000000000111;
        if (!alive && count == 3 || alive && (count == 2 || count == 3)) {
            ans |= (0b0000000000000001 << (i * 4));
        }
        mask >>= 4;
    }
    return ans;
}
int main(void) {
    assert(countNeighbours_1(0b00000000) == 0);
    assert(countNeighbours_1(0b00000001) == 0);
    assert(countNeighbours_1(0b00000010) == 0);
    assert(countNeighbours_1(0b00000011) == 1);
    assert(countNeighbours_1(0b00000100) == 0);
    assert(countNeighbours_1(0b00000101) == 0);
    assert(countNeighbours_1(0b00000110) == 0);
    assert(countNeighbours_1(0b00000111) == 0);
    assert(countNeighbours_1(0b00001000) == 0);
    assert(countNeighbours_1(0b00001001) == 0);
    assert(countNeighbours_1(0b00001010) == 1);
    assert(countNeighbours_1(0b00001011) == 1);
    assert(countNeighbours_1(0b00001100) == 0);
    assert(countNeighbours_1(0b00001101) == 0);
    assert(countNeighbours_1(0b00001110) == 0);
    assert(countNeighbours_1(0b00001111) == 0);
    for (int c1 = 0; c1 < 16; c1++) {
        for (int c2 = 0; c2 < 16; c2++) {
            for (int c3 = 0; c3 < 16; c3++) {
                for (int c4 = 0; c4 < 16; c4++) {
                    int word = (c1 << 12) | (c2 << 8) | (c3 << 4) | (c4);
                    assert(countNeighbours_4(word) == countNeighbours_default(word));
                    print_b(countNeighbours_4(word));
                    if (word == 32904) {
                        getc(stdin);
                    }
                }
            }
        }
    }
}
#endif