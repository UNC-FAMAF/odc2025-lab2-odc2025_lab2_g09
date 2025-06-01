.include "ref_screen.s"
.global dib_rectangulo

dib_rectangulo:

    /* Entrada:
        x0: dirección base de la pantalla (inicio del framebuffer)
        x1: color del rectángulo (ARGB de 32 bits)
        x2: rect_start_x (columna)
        x3: rect_start_y (fila)
        x4: rect_width (ancho del rectángulo)
        x5: rect_height (alto del rectángulo)
    */

    // Calcular el puntero al primer píxel: x3 * SCREEN_WIDTH + x2
    // tmp0 = y * SCREEN_WIDTH
    mov x6, x3                  // x6 = y
    mov x7, SCREEN_WIDTH
    mul x6, x6, x7              // x6 = y * SCREEN_WIDTH
    add x6, x6, x2              // x6 = (y * SCREEN_WIDTH + x)
    lsl x6, x6, 2               // x6 *= 4 (4 bytes por píxel)
    add x6, x0, x6              // x6 = dirección base del rectángulo

    mov x7, x5                  // x7 = rect_height (alto del rectángulo)
.rect_row_loop:
    mov x8, x4                  // x8 = rect_width (ancho del rectángulo)
    mov x9, x6                  // x9 = inicio de esta fila
.rect_col_loop:
    str w1, [x9]                // guardar color en el píxel
    add x9, x9, 4               // avanzar al siguiente píxel
    subs x8, x8, 1
    b.ne .rect_col_loop         // repetir hasta completar la fila

    add x6, x6, SCREEN_WIDTH * 4  // avanzar a la siguiente fila
    subs x7, x7, 1
    b.ne .rect_row_loop         // repetir hasta completar todas las filas

    ret

dib_ovalo_vertical:

    /* Entrada:
        x0: dirección base de la pantalla (inicio del framebuffer)
        x1: color del rectángulo (ARGB de 32 bits)
        x2: ovalo_inicio_x (columna)
        x3: ovalo_inicio_y (fila)
        x4: largo del ovalo; ancho inicial/final del ovalo
        x5: ancho creciente/decreciente del ovalo
    */

	// Calcula el total de una linea
	mov x11, SCREEN_WIDTH
	lsl x15, x11, 2				// x15 = SCREEN_WIDTH * 4

    // Calcular el puntero al primer píxel: x3 * SCREEN_WIDTH + x2
    // tmp0 = y * SCREEN_WIDTH
	mov x10, x3					// x5 = Y
	mul x10, x10, x11			// x5 = Y * SCREEN_WIDTH
	add x10, x10, x2			// x5 = Y * SCREEN_WIDTH + X
	lsl x10, x10, 2				// (x5 = Y * SCREEN_WIDTH + X) * 4
	add x10, x0, x10			// x5 = &A + (Y * SCREEN_WIDTH + x) * 4
	add x0, x10, xzr			// x0 = A[Y * SCREEN_WIDTH + x]

	// preparativos para el loop:
	lsr x10, x4, 1				// x10 = x3 lsr 1
	lsr x11, x5, 1				// x11 = x4 lsr 1

	// preparativos para el final del loop:
	mov x12, x4					// guarda x3 en x21
	mov x13, x5					// guarda x4 en x22
	mov x6, x0					// guarda la direccion inicial en x5
	mov x7, x0					// guarda la direccion inicial en x23

	mov x3, x4					// i = x3
ovalo_loop_o1:
	mov x2, x4					// j = x3
	cmp x3, x10					// compara i con x3/2 
	b.eq ovalo_loop_o1_end		// si i es menor, salta al final del 1er loopo
	cbz x11, ovalo_loop_i2		// si x4/2 = 0, salta al segundo loopi
ovalo_loop_i1:
	stur w1,[x0]				// colorea el pixel N
	add x0, x0, 4				// Siguiente pixel
	sub x2, x2, 1				// disminuye j
    cbnz x2, ovalo_loop_i1		// Si no termino la fila, salto
	lsl x14, x11, 2				// x6 = x4/2 * 4
	sub x6, x6, x14				// se mueve x4/2 a la izq. del ovalo
	add x0, x15, x6				// salta a la siguiente linea
	mov x6, x0					// guarda la posicion actual de x0
	add x4, x4, x5				// aumenta el radio del ovalo
	lsr x11, x11, 1				// parte a la mitad el incremento del ovalo;
	// si x11 = 1, termina siendo igal a 0
	lsr x5, x5, 1				// parte a la mitad el incremento del ovalo;
	// si x5 = 1, termina siendo igal a 0
	sub x3, x3, 1				// disminuye i
	b ovalo_loop_o1				// vuelve al inicio del loopo
ovalo_loop_i2:
	stur w1,[x0]				// colorea el pixel N
	add x0, x0, 4				// Siguiente pixel
	sub x2, x2, 1				// disminuye j
    cbnz x2, ovalo_loop_i2		// Si x != 0, vuelve a ejejcutar
	add x0, x15, x6				// salta a la siguiente linea
	mov x6, x0					// guarda la posicion actual de x0
	sub x3, x3, 1				// disminuye i
	b ovalo_loop_o1				// vuelve al inicio del loopo
ovalo_loop_o1_end:
	mov x4, x12					// reiniciar x3
	mov x5, x13					// reiniciar x4
	mov x6, x7					// reiniciar x5
	lsr x11, x5, 1				// x11 = x4 / 2

	mul x14, x15, x4			// x6 = i * SCREEN_WIDTH * 4
	add x0, x6, x14				// bajo Y lineas desde la posicion inicial de x0
	mov x6, x0					// guarda la posicion actual de x0

ovalo_loop_o2:
	mov x2, x4					// X = x3
	subs x3, x3, xzr			// veriica si i es negativo
	b.lt ovalo_loop_o2_end		// si lo es, termina el 2do loop
	cbz x11, ovalo_loop_i4		// si x4/2 = 0, salta al segundo loopi
ovalo_loop_i3:
	stur w1,[x0]				// colorea el pixel N
	add x0, x0, 4				// Siguiente pixel
	sub x2, x2, 1				// disminuye j
    cbnz x2, ovalo_loop_i3		// Si j != 0, vuelve a ejejcutar
	lsl x14, x11, 2				// x6 = x4/2 * 4
	sub x6, x6, x14				// se mueve x4/2 a la izq. del ovalo
	sub x0, x6, x15				// salta a la linea anterior
	mov x6, x0					// guarda la posicion actual de x0
	add x4, x4, x5				// aumenta el radio del ovalo
	lsr x11, x11, 1				// parte a la mitad el incremento del ovalo;
	// si x11 = 1, termina siendo igal a 0
	lsr x5, x5, 1				// parte a la mitad el incremento del ovalo;
	// si x5 = 1, termina siendo igal a 0
	sub x3, x3, 1				// disminuye i
	b ovalo_loop_o2				// vuelve al inicio del loopo
ovalo_loop_i4:
	stur w1,[x0]				// colorea el pixel N
	add x0, x0, 4				// Siguiente pixel
	sub x2, x2, 1				// disminuye j
    cbnz x2, ovalo_loop_i4		// Si x != 0, vuelve a ejejcutar
	sub x0, x6, x15				// salta a la linea anteriior
	mov x6, x0					// guarda la posicion actual de x0
	sub x3, x3, 1				// disminuye i
	b ovalo_loop_o2				// vuelve al inicio del loopo
ovalo_loop_o2_end:

	ret
