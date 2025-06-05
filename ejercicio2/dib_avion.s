.global avion
.global dispawn_avion

avion:

	mov x28, x30


	// guanda los x,y iniciales para usarlos continuamente
	mov x21, x2
	mov x22, x3

    // color rojo
    movz x1, 0xAAAA, lsl #16
    movk x1, 0x0000, lsl #0


	// cola
    add x2, x21, xzr
    add x3, x22, 3
    mov x4, 4
    mov x5, 3
    bl dib_rectangulo


	// cuerpo
    add x2, x21, 4
    add x3, x22, 4
    mov x4, 19
    mov x5, 3
    bl dib_rectangulo


	// patas de la bolsa
    add x2, x21, 10
    add x3, x22, 8
    mov x4, 1
    mov x5, 1
    bl dib_rectangulo

    add x2, x21, 11
    add x3, x22, 7
    mov x4, 1
    mov x5, 1
    bl dib_rectangulo


    add x2, x21, 15
    add x3, x22, 7
    mov x4, 1
    mov x5, 2
    bl dib_rectangulo



    // color blanco 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0


	// alas
    add x2, x21, 8
    add x3, x22, 5
    mov x4, 9
    mov x5, 1
    bl dib_rectangulo

    add x2, x21, 6
    add x3, x22, 6
    mov x4, 7
    mov x5, 1
    bl dib_rectangulo

    add x2, x21, 3
    add x3, x22, 7
    mov x4, 5
    mov x5, 1
    bl dib_rectangulo

	// bolsa
    add x2, x21, 4
    add x3, x22, 10
    mov x4, 16
    mov x5, 2
    bl dib_rectangulo

    add x2, x21, 7
    add x3, x22, 9
    mov x4, 12
    mov x5, 4
    bl dib_rectangulo


	// cabina
    add x2, x21, 10
    add x3, x22, 1
    mov x4, 4
    mov x5, 3
    bl dib_rectangulo

    add x2, x21, 9
    add x3, x22, 2
    mov x4, 6
    mov x5, 2
    bl dib_rectangulo


	// elise
    add x2, x21, 24
    add x3, x22, xzr
    mov x4, 1
    mov x5, 11
    bl dib_rectangulo

    add x2, x21, 23
    add x3, x22, 5
    mov x4, 3
    mov x5, 1
    bl dib_rectangulo


	//devuelve los x2, x3 originales
	mov x2, x21
	mov x3, x22

	mov x30, x28


ret


dispawn_avion:

	mov x28, x30

    // COLOR_BG_DARKBLUE
    movz x1, 0xFF0D, lsl #16
    movk x1, 0x171F, lsl #0

    mov x4, 26
    mov x5, 26
    bl dib_rectangulo

	mov x30, x28

ret
