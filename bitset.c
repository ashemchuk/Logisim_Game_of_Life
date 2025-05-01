#include "bitset.h"
char BS[MAX_SIZE];

void BSInsert(int i, bool value) {
    if (i > MAX_SIZE * BYTE) {
        return;
    }
    char mask = 0b10000000 >> (i % BYTE);
    if (value == false) {
        mask ^= 0b11111111;
    }
    if (value == true) {
        BS[i/BYTE] |= mask;
    } else {
        BS[i/BYTE] &= mask;
    }
}

bool BSGet(int i) {
    if (i > MAX_SIZE * BYTE) return false; // ??
    return (BS[i/BYTE] & (0b10000000 >> (i % BYTE))) != 0;
}
#ifdef TEST 
    #include <stdio.h>
    #include <assert.h>
    int main(void) {
        BSInsert(0, 1);
        assert(BSGet(0) == 1);
        BSInsert(0, 0);
        assert(BSGet(0) == 0);
        BSInsert(1, 1);
        assert(BSGet(1) == 1);
        BSInsert(3, 1);
        assert(BSGet(3) == 1);
        BSInsert(8, 1);
        assert(BSGet(8) == 1);
        BSInsert(9, 1);
        assert(BSGet(9) == 1);
        assert(BSGet(7) == 0);
    }
#endif