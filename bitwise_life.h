#ifndef BITWISE_LIFE_H
#define BITWISE_LIFE_H

#define FIELD_SIZE 108
 //(SIZE + 2) * (SIZE / 4 + 2); // 4 = sizeof(unsigned short) * 2 -- 4 bits for each ceil

void next_gen(unsigned short field[], unsigned short write[]);

#endif