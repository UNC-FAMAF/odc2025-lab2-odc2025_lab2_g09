.include "ref_screen.s"
.global dib_rectangulo

dib_rectangulo:

    /*Input:
        x0: base address of screen (start of framebuffer)
        x1: rectangle color (ARGB 32-bit)
        x2: rect_start_x (column)
        x3: rect_start_y (row)
        x4: rect_width
        x5: rect_height
    */

    // Calculate pointer to first pixel: x3 * SCREEN_WIDTH + x2
    // tmp0 = y * SCREEN_WIDTH
    mov x6, x3                  // x6 = y
    mov x7, SCREEN_WIDTH
    mul x6, x6, x7              // x6 = y * SCREEN_WIDTH
    add x6, x6, x2              // x6 = (y * SCREEN_WIDTH + x)
    lsl x6, x6, 2               // x6 *= 4 (4 bytes per pixel)
    add x6, x0, x6              // x6 = base address of rectangle

    mov x7, x5                  // x7 = rect_height
.rect_row_loop:
    mov x8, x4                  // x8 = rect_width
    mov x9, x6                  // x9 = start of this row
.rect_col_loop:
    str w1, [x9]                // store color in pixel
    add x9, x9, 4               // move to next pixel
    subs x8, x8, 1
    b.ne .rect_col_loop

    add x6, x6, SCREEN_WIDTH * 4  // move to next row
    subs x7, x7, 1
    b.ne .rect_row_loop

    ret
