.global delay

delay:

	mov x0, 0
	movz x0, 0x0100, lsl #16
L1: sub x0, x0, 1
	cbnz x0, L1

	mov x0, x20

ret

