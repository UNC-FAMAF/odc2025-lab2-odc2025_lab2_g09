.global avion
.global dispawn_avion

avion:
	mov x28, x30

	mov x21, x2      // guardar x inicial
	mov x22, x3      // guardar y inicial

    // color rojo
    movz x1, 0xAAAA, lsl #16
    movk x1, 0x0000, lsl #0

	// cola
    add x2, x21, xzr
    add x3, x22, 6
    mov x4, 8
    mov x5, 6
    bl dib_rectangulo

	// cuerpo
    add x2, x21, 8
    add x3, x22, 8
    mov x4, 38
    mov x5, 6
    bl dib_rectangulo

	// patas de la bolsa
    add x2, x21, 20
    add x3, x22, 16
    mov x4, 2
    mov x5, 2
    bl dib_rectangulo

    add x2, x21, 22
    add x3, x22, 14
    mov x4, 2
    mov x5, 2
    bl dib_rectangulo

    add x2, x21, 30
    add x3, x22, 14
    mov x4, 2
    mov x5, 4
    bl dib_rectangulo

    // color blanco
    movz x1, 0xFF7A, lsl #16
    movk x1, 0x95A7, lsl #0

	// alas
    add x2, x21, 16
    add x3, x22, 10
    mov x4, 18
    mov x5, 2
    bl dib_rectangulo

    add x2, x21, 12
    add x3, x22, 12
    mov x4, 14
    mov x5, 2
    bl dib_rectangulo

    add x2, x21, 6
    add x3, x22, 14
    mov x4, 10
    mov x5, 2
    bl dib_rectangulo

	// bolsa
    add x2, x21, 8
    add x3, x22, 20
    mov x4, 32
    mov x5, 4
    bl dib_rectangulo

    add x2, x21, 14
    add x3, x22, 18
    mov x4, 24
    mov x5, 8
    bl dib_rectangulo

	// cabina
    add x2, x21, 20
    add x3, x22, 2
    mov x4, 8
    mov x5, 6
    bl dib_rectangulo

    add x2, x21, 18
    add x3, x22, 4
    mov x4, 12
    mov x5, 4
    bl dib_rectangulo

	// hélice
    add x2, x21, 48
    add x3, x22, 0
    mov x4, 2
    mov x5, 22
    bl dib_rectangulo

    add x2, x21, 46
    add x3, x22, 10
    mov x4, 6
    mov x5, 2
    bl dib_rectangulo

	// restaurar x2, x3
	mov x2, x21
	mov x3, x22
	mov x30, x28
ret
