#include "life.h"
int lookUp = {
    0, 0, 0, 1, 0, 0, 0, 0, // ceil is dead and neighbours count is I, lookUp[I] = dead/alive
    0, 0, 1, 1, 0, 0, 0, 0 // ceil is alive --//--
};
int HEIGHT = SIZE;
int WIDTH = SIZE;
int FIELD_SIZE = (SIZE + 2) * (SIZE / 4 + 2); // 4 = sizeof(int) * 2 -- 4 bits for each ceil
void next_gen(int field[]) {
    for (int i = 1; i < ; i++) {
        int c = field[i];
        int W = field[i - 1];
        int E = field[i + 1];
        int N = field[]
    }
}