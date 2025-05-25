.global dib_pared

dib_pared:

    //draw wall
	//hardcoded COLOR_WALL
	movz x1, 0xFF2E, lsl #16 
    movk x1, 0x4659, lsl #0
    mov x2, 0       // start_x
    mov x3, 0       // start_y
    mov x4, 90       // width
    mov x5, 480       // height
    bl dib_rectangulo

    mov x2, 90       // start_x
    mov x3, 0       // start_y
    mov x4, 550       // width
    mov x5, 20       // height
    bl dib_rectangulo

    mov x2, 90       // start_x
    mov x3, 435       // start_y
    mov x4, 550       // width
    mov x5, 45       // height
    bl dib_rectangulo
    
    //draw outer window frame
	//hardcoded COLOR_BROWN_DARK
    movz x1, 0xFF35, lsl #16 
    movk x1, 0x1606, lsl #0
    mov x2, 90       // start_x
    mov x3, 20       // start_y
    mov x4, 10       // width
    mov x5, 415       // height
    bl dib_rectangulo

    mov x2, 100       // start_x
    mov x3, 20       // start_y
    mov x4, 540       // width
    mov x5, 10       // height
    bl dib_rectangulo

    mov x2, 100       // start_x
    mov x3, 425       // start_y
    mov x4, 540       // width
    mov x5, 10       // height
    bl dib_rectangulo

    //draw inner window frame
	//hardcoded COLOR_BROWN_LIGHT
    movz x1, 0xFF4C, lsl #16 
    movk x1, 0x2D17, lsl #0
    mov x2, 100       // start_x
    mov x3, 30       // start_y
    mov x4, 5       // width
    mov x5, 390       // height
    bl dib_rectangulo

    mov x2, 100       // start_x
    mov x3, 30       // start_y
    mov x4, 540       // width
    mov x5, 5       // height
    bl dib_rectangulo

    mov x2, 100       // start_x
    mov x3, 420       // start_y
    mov x4, 540       // width
    mov x5, 5       // height
    bl dib_rectangulo

ret
