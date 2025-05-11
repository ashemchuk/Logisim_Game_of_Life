#include "life.h"
#include "print.h"
unsigned short FIELD0[FIELD_SIZE];
unsigned short FIELD1[FIELD_SIZE];
extern volatile short IS_RUNNING;
int main(void) {
    while(1) {
        if (IS_RUNNING) {
            next_gen(FIELD0, FIELD1);
            print(FIELD1);
        };
        if (IS_RUNNING) {
            next_gen(FIELD1, FIELD0);
            print(FIELD0);
        }
    }
    return 0;
}