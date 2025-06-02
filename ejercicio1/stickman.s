.global stickman 

stickman:
    mov x28, x30

    // color negro
    movz x1, 0xFF00, lsl #16
    movk x1, 0x0000, lsl #0

    //rectangulo negro 
    mov x2, 100  // eje x 
    mov x3, 320 // eje y 
    mov x4, 80 
    mov x5, 160
    bl dib_rectangulo

    mov     x2, 90                // start_x
    mov     x3, 200                // start_y
    mov     x4, 100                // width
    mov     x5, 120                 // height
    bl      dibujar_ovalo

    //ojos 
    // color blanco 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0
    mov     x2, 145                // start_x
    mov     x3, 235                // start_y
    mov     x4, 10                // width
    mov     x5, 24                 // height
    bl      dibujar_ovalo

    mov     x2, 163                // start_x
    mov     x3, 230                // start_y
    mov     x4, 10                // width
    mov     x5, 24                 // height
    bl      dibujar_ovalo

    mov x30, x28
ret
 