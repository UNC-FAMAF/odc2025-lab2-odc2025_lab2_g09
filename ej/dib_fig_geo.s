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
    // Guardar registros temporales si se desea (opcional)

    // a = width / 2 ; a²
    mov     x6, x4
    lsr     x6, x6, 1          // x6 = a
    mul     x10, x6, x6        // x10 = a²

    // b = height / 2 ; b²
    mov     x7, x5
    lsr     x7, x7, 1          // x7 = b
    mul     x11, x7, x7        // x11 = b²

    // cx = start_x + a
    add     x12, x2, x6        // x12 = cx

    // cy = start_y + b
    add     x13, x3, x7        // x13 = cy

    // RHS = a² * b²
    mul     x14, x10, x11      // x14 = a² * b²

    // Comenzar el loop por y desde start_y hasta start_y + height
    mov     x15, x3            // y actual
    add     x16, x3, x5        // y final (limite)

.loop_y:
    // Verificar si y terminó
    cmp     x15, x16
    b.ge    .end_oval

    // Loop por x desde start_x hasta start_x + width
    mov     x17, x2            // x actual
    add     x18, x2, x4        // x final (limite)

.loop_x:
    cmp     x17, x18
    b.ge    .next_row

    // dx = x - cx
    sub     x19, x17, x12
    mul     x20, x19, x19      // dx²

    // dx² * b²
    mul     x20, x20, x11

    // dy = y - cy
    sub     x21, x15, x13
    mul     x22, x21, x21      // dy²

    // dy² * a²
    mul     x22, x22, x10

    // lhs = dx² * b² + dy² * a²
    add     x23, x20, x22

    // Comparar con RHS
    cmp     x23, x14
    b.gt    .skip_pixel        // Si está fuera del óvalo, saltar

    // Calcular dirección del píxel
    // offset = (y * SCREEN_WIDTH + x) * 4
    mov     x24, x15           // y
    mov     x25, SCREEN_WIDTH
    mul     x24, x24, x25      // y * SCREEN_WIDTH
    add     x24, x24, x17      // + x
    lsl     x24, x24, 2        // * 4 bytes por píxel
    add     x24, x0, x24       // dirección absoluta

    // Escribir el color
    str     w1, [x24]

.skip_pixel:
    add     x17, x17, 1        // x++
    b       .loop_x

.next_row:
    add     x15, x15, 1        // y++
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
