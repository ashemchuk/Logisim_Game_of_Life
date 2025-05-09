#include "bitwise_life.h"
extern volatile int KEYBOARD;
extern volatile int IS_RUNNING;
extern volatile int COORD;
extern volatile int CURSOR_VISIBILITY;
extern short FIELD0[FIELD_SIZE];
extern volatile short DISPLAY[SIZE];
extern volatile int CURSOR_ON;
int CEILS[4] = {
    0b1000000000000000, 0b0000100000000000, 0b0000000010000000, 0b0000000000001000
};
int CURSOR[SIZE] = {
    0b1000000000000000, 0b0100000000000000, 0b0010000000000000, 0b0001000000000000,
    0b0000100000000000, 0b0000010000000000, 0b0000001000000000, 0b0000000100000000,
    0b0000000010000000, 0b0000000001000000, 0b0000000000100000, 0b0000000000010000,
    0b0000000000001000, 0b0000000000000100, 0b0000000000000010, 0b0000000000000001,

};
int mul6[] = {
    0, 6, 12,18,24,30,36,42,48,54,60,66,72,78,84,90,96,102, 108, 114, 120
};
__attribute__((CDM_ISR)) void KB_ISR(void) {
    int Y_COORD = ((COORD & 0b1111000000000000) >> 12); /// ?
    int X_COORD = COORD & 0b0000000000001111;
    int keycode = KEYBOARD;
    switch (keycode)
    {
    case 0b0000000000000001: // enter
        FIELD0[(mul6[X_COORD + 1] + 1) + (Y_COORD >> 2)] |= CEILS[Y_COORD & 0b11];
        DISPLAY[X_COORD] |= CURSOR[Y_COORD];
        break;
    case 0b0000000000000010: // pause
        IS_RUNNING = !IS_RUNNING; // ?
        CURSOR_ON = IS_RUNNING;
        break;
    // case 0b0001000000000000: // UP
    //     Y_COORD = (Y_COORD - 1) & 0b1111; //%16
    //     DISPLAY[X_COORD] |= DISPLAY[X_COORD] | CURSOR[Y_COORD];
    //     break;
    // case 0b0010000000000000: // RIGHT
    //     X_COORD = (X_COORD + 1) & 0b1111;
    //     DISPLAY[X_COORD] |= DISPLAY[X_COORD] | CURSOR[Y_COORD];
    //     break;
    // case 0b0100000000000000: // DOWN
    //     Y_COORD = (Y_COORD + 1) & 0b1111;
    //     DISPLAY[X_COORD] |= DISPLAY[X_COORD] | CURSOR[Y_COORD];
    //     break;
    // case 0b1000000000000000: // LEFT
    //     X_COORD = (X_COORD - 1) & 0b1111;
    //     DISPLAY[X_COORD] |= DISPLAY[X_COORD] | CURSOR[Y_COORD];
    //     break;
    default:
        break;
    }
}