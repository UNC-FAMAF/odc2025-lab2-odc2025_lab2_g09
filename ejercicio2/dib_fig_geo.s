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
    // No dibujar si ancho o alto es 0 o 1
    cmp x4, 2
    blt .end_oval

    cmp x5, 2
    blt .end_oval

    // a = width / 2 ; a²
    mov     x6, x4
    lsr     x6, x6, 1          // x6 = a
    mul     x7, x6, x6         // x7 = a²

    // b = height / 2 ; b²
    mov     x8, x5
    lsr     x8, x8, 1          // x8 = b
    mul     x9, x8, x8         // x9 = b²

    // cx = start_x + a
    add     x10, x2, x6        // x10 = cx

    // cy = start_y + b
    add     x11, x3, x8        // x11 = cy

    // RHS = a² * b²
    mul     x12, x7, x9        // x12 = a² * b²

    // y actual = start_y
    mov     x13, x3
    add     x14, x3, x5        // y final

.loop_y:
    cmp     x13, x14
    b.ge    .end_oval

    mov     x15, x2
    add     x16, x2, x4        // x final

.loop_x:
    cmp     x15, x16
    b.ge    .next_row

    // dx = x - cx
    sub     x17, x15, x10
    mul     x18, x17, x17
    mul     x18, x18, x9       // dx² * b²

    // dy = y - cy
    sub     x19, x13, x11
    mul     x21, x19, x19
    mul     x21, x21, x7       // dy² * a²

    // lhs = dx² * b² + dy² * a²
    add     x22, x18, x21

    // comparar con RHS
    cmp     x22, x12
    b.gt    .skip_pixel

    // offset = ((y * SCREEN_WIDTH) + x) * 4
    mov     x25, SCREEN_WIDTH
    mul     x26, x13, x25
    add     x26, x26, x15
    lsl     x26, x26, 2
    add     x26, x0, x26

    str     w1, [x26]

.skip_pixel:
    add     x15, x15, 1
    b       .loop_x

.next_row:
    add     x13, x13, 1
    b       .loop_y

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
