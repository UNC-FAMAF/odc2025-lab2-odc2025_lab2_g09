.global dib_persona 

dib_persona:

    mov x28, x30

    // color negro
    movz x1, 0xFF00, lsl #16
    movk x1, 0x0000, lsl #0

    // cuerpo 
    mov x2, 10  // start_x 
    mov x3, 320 // start_y 
    mov x4, 280 // width 
    mov x5, 460 // height
    bl dibujar_ovalo

	// cabeza
    mov     x2, 90                
    mov     x3, 161                
    mov     x4, 130                
    mov     x5, 160                 
    bl      dibujar_ovalo

    // color blanco 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0

	// ojo derecho
    mov     x2, 170               
    mov     x3, 218                
    mov     x4, 18               
    mov     x5, 40                 
    bl      dibujar_ovalo

	// ojo izquierdo
    mov     x2, 195                
    mov     x3, 215                
    mov     x4, 18                
    mov     x5, 40                 
    bl      dibujar_ovalo

    mov x30, x28

ret
