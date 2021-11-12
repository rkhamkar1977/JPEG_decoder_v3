#include <stdio.h>

#define SCALEBITS	16	/* speediest right-shift on some machines */
#define ONE_HALF	((int) 1 << (SCALEBITS-1))
#define FIX(x)		((int) ((x) * (1L<<SCALEBITS) + 0.5))


printf("%d",FIX(1.09493));
