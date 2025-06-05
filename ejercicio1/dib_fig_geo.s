.include "ref_screen.s"
.global dib_rectangulo
.global dibujar_ovalo
.global dibujar_circulo

.equ SCREEN_STRIDE, SCREEN_WIDTH * 4

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

        add x6, x6, SCREEN_STRIDE  // avanzar a la siguiente fila
        subs x7, x7, 1
        b.ne .rect_row_loop         // repetir hasta completar todas las filas

ret

dibujar_ovalo:
    // si ancho < 2 saltea
    cmp x4, 2
    blt .end_oval

    cmp x5, 2
    blt .end_oval

    // a = x4 / 2
    lsr x6, x4, 1
    mul x6, x6, x6     // x6 = a²

    // b = x5 / 2
    lsr x7, x5, 1
    mul x7, x7, x7     // x7 = b²

    // cx = x2 + (x4 / 2)
    lsr x8, x4, 1
    add x8, x2, x8     // x8 = cx

    // cy = x3 + (x5 / 2)
    lsr x9, x5, 1
    add x9, x3, x9     // x9 = cy

    mul x10, x6, x7    // lado derecho = a² * b²

    mov x11, x3              // y = inicio_y
    add x12, x3, x5          // y_final = inicio_y + altura

    .loop_y:
        cmp x11, x12
        b.ge .end_oval

        mov x13, x2              // x = inicio_x
        add x14, x2, x4          // x_final = inicio_x + ancho

    .loop_x:
        cmp x13, x14
        b.ge .next_y

        // dx = x - cx
        sub x15, x13, x8
        mul x15, x15, x15    // dx²
        mul x15, x15, x7     // dx² * b²

        // dy = y - cy
        sub x16, x11, x9
        mul x16, x16, x16    // dy²
        mul x16, x16, x6     // dy² * a²

        add x17, x15, x16    // lado izquierdo = dx²*b² + dy²*a²
        cmp x17, x10
        b.gt .skip_pixel

        //offset = ((y * SCREEN_WIDTH) + x) * 4
        mov x18, SCREEN_WIDTH
        mul x18, x11, x18
        add x18, x18, x13
        lsl x18, x18, 2
        add x18, x0, x18

        str w1, [x18]

    .skip_pixel:
        add x13, x13, 1
        b .loop_x

    .next_y:
        add x11, x11, 1
        b .loop_y

.end_oval:
    ret


dibujar_circulo:
    // Verificar si el radio es 0 o negativo
    cbz x4, .end_circle

    // r² = radio * radio
    mul x5, x4, x4          // x5 = r²

    // y desde (cy - r) hasta (cy + r)
    sub x6, x3, x4          // x6 = y_start = cy - r
    add x7, x3, x4          // x7 = y_end   = cy + r

    .loop_y_circulo:
        cmp x6, x7
        b.gt .end_circle

        // x desde (cx - r) hasta (cx + r)
        sub x8, x2, x4          // x8 = x_start = cx - r
        add x9, x2, x4          // x9 = x_end   = cx + r

        mov x10, x8             // x_actual = x_start

    .loop_x_circulo:
        cmp x10, x9
        b.gt .next_row_circulo

        // dx = x_actual - cx
        sub x11, x10, x2
        mul x11, x11, x11       // dx²

        // dy = y_actual - cy
        sub x12, x6, x3
        mul x12, x12, x12       // dy²

        add x13, x11, x12       // dx² + dy²

        cmp x13, x5
        b.gt .skip_pixel_circulo        // fuera del círculo

        // Calcular dirección del píxel
        mov x14, x6                 // y_actual
        mov x15, SCREEN_WIDTH
        mul x14, x14, x15           // y * SCREEN_WIDTH
        add x14, x14, x10           // + x
        lsl x14, x14, 2             // * 4 bytes por píxel
        add x14, x0, x14            // dirección absoluta

        str w1, [x14]               // dibujar píxel

    .skip_pixel_circulo:
        add x10, x10, 1             // x++
        b .loop_x_circulo

    .next_row_circulo:
        add x6, x6, 1               // y++
        b .loop_y_circulo

.end_circle:
    ret
