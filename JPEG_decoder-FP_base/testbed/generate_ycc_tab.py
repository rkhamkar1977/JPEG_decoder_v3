i = 0
x = -128
for i in range(0,256):
	crr_val = int(1.402 * x)
	cbb_val = int(1.772 * x)
	crg_val = int(-(-0.71414 << 16 + 0.5)*x)
	cbg_val = int(-(-0.34414 << 16 + 0.5)*x)
	x+=1
	print crr_val
