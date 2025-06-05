.global stickman 

stickman:

    mov x28, x30
    mov x27, x20

    // color negro
    movz x1, 0xFF00, lsl #16
    movk x1, 0x0000, lsl #0

    // cuerpo 
    mov x2, 10  // start_x 
    mov x3, 320 // start_y 
    mov x4, 280 // 
    mov x5, 460 // 
    bl dibujar_ovalo

	// cabeza
    mov     x2, 90                // start_x
    mov     x3, 161                // start_y
    mov     x4, 130                // width
    mov     x5, 160                 // height
    bl      dibujar_ovalo

    // color blanco 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0

	// ojo derecho
    mov     x2, 170                // start_x
    mov     x3, 218                // start_y
    mov     x4, 18                // width
    mov     x5, 40                 // height
    bl      dibujar_ovalo

	// ojo izquierdo
    mov     x2, 195                // start_x
    mov     x3, 215                // start_y
    mov     x4, 18                // width
    mov     x5, 40                 // height
    bl      dibujar_ovalo

    mov x30, x28
	mov x20, x27

ret
