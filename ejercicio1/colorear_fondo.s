.include "ref_screen.s"

.global colorear_fondo

colorear_fondo:
    //COLOR_BG_DARKBLUE
	movz x10, 0xFF0D, lsl 16
	movk x10, 0x171F, lsl 00

	mov x2, SCREEN_HEIGH         // Y Size
    .loop1:
        mov x1, SCREEN_WIDTH         // X Size
    .loop0:
        stur w10,[x0]  // Colorear el pixel N
        add x0,x0,4	   // Siguiente pixel
        sub x1,x1,1	   // Decrementar contador X
        cbnz x1, .loop0  // Si no terminó la fila, salto
        sub x2,x2,1	   // Decrementar contador Y
        cbnz x2, .loop1  // Si no es la última fila, salto
        
.fondo_done:
    ret
