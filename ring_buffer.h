#ifndef RINGBUF
#define RINGBUF
#include "life.h"

void init();
void push(Ceil c);
Ceil pop();
int getCount();

#endif