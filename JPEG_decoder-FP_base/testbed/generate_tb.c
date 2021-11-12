#include <stdio.h>

int i = 0;
int x = -128;
int crr_val[256];
int cbb_val[256];
int crg_val[256];
int cbg_val[256];

void main () {
int x = 0xfffb0042;
int y = 0x00023882;
printf("%x\n",(x+y));

//for (i=0; i<=255; i++) {
//	crr_val[i] = (int) (1.402 * x);
//	cbb_val[i] = (int) (1.77200 * x);
//	crg_val[i] = (-((int) ((0.7141400) * (1L<<16) + 0.5))) * x;
//	cbg_val[i] = (-((int) ((0.3441400) * (1L<<16) + 0.5))) * x + (int) (1<<15);
//	x++;
//
//
//
//
//}
//for (i=0; i<=255; i++) {
//	printf("crg_val[%d] <= 32'h%08x\n",i,crg_val[i]);
//	printf("crr_val[%d] <= 32'h%08x\n",i,crr_val[i]);
//	printf("cbg_val[%d] <= 32'h%08x\n",i,cbg_val[i]);
//	printf("cbb_val[%d] <= 32'h%08x\n",i,cbb_val[i]);
//}
}
