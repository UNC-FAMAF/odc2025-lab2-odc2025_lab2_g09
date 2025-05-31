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
