.global dib_pared

dib_pared:
    //salva el ret a main
    mov x28, x30 
    //dibuja pared
	//COLOR_WALL
	movz x1, 0xFF2E, lsl #16 
    movk x1, 0x4659, lsl #0
    //left
    mov x2, 0       // inicio_x
    mov x3, 0       // inicio_y
    mov x4, 90       // largo
    mov x5, 480       // altura
    bl dib_rectangulo
    //top
    mov x2, 90       
    mov x3, 0       
    mov x4, 550       
    mov x5, 20       
    bl dib_rectangulo
    //bottom 
    mov x2, 90       
    mov x3, 435       
    mov x4, 550       
    mov x5, 45       
    bl dib_rectangulo

    //dibuja marco interno de ventana
	//COLOR_BROWN_DARK
    movz x1, 0xFF35, lsl #16 
    movk x1, 0x1606, lsl #0
    //izquierda
    mov x2, 90       
    mov x3, 20       
    mov x4, 10       
    mov x5, 415       
    bl dib_rectangulo
    //arriba
    mov x2, 100       
    mov x3, 20       
    mov x4, 540       
    mov x5, 10       
    bl dib_rectangulo
    //abajo
    mov x2, 100       
    mov x3, 425       
    mov x4, 540       
    mov x5, 10       
    bl dib_rectangulo

    //dibuja marco externo de ventana
	//COLOR_BROWN_LIGHT
    movz x1, 0xFF4C, lsl #16 
    movk x1, 0x2D17, lsl #0
    //izquierda
    mov x2, 100       
    mov x3, 30       
    mov x4, 5       
    mov x5, 390       
    bl dib_rectangulo
    //arriba
    mov x2, 100       
    mov x3, 30       
    mov x4, 540       
    mov x5, 5       
    bl dib_rectangulo
    //abajo
    mov x2, 100       
    mov x3, 420       
    mov x4, 540       
    mov x5, 5       
    bl dib_rectangulo

//retorna el ret a main
mov x30, x28
ret

