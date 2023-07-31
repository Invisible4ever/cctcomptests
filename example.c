#include <stdint.h>
#include <stdbool.h>

uint32_t ct_select_u32(uint32_t *x, uint32_t *y, bool bit) {
    signed b = 0 - bit;
    int32_t int1, int2 = 0;
    int1 = (x[0]&b) | (y[0]&~b);
    int2 = (x[0]-1&b) | (x[0]&~b);
    return int1 | int2;
}

