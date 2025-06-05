.global dib_letrero

dib_letrero:
    mov x28, x30 

    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0


	// letra M
    mov x2, 455       // start_x
    mov x3, 224       // start_y
    mov x4, 5       // width
    mov x5, 25       // height
    bl dib_rectangulo

    mov x2, 459
    mov x3, 229
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    mov x2, 465
    mov x3, 234
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    mov x2, 471
    mov x3, 229
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    mov x2, 476
    mov x3, 224
    mov x4, 5
    mov x5, 25
    bl dib_rectangulo


    //letra O de arriba
    mov x2, 488       // start_x
    mov x3, 229       // start_y
    mov x4, 5       // width
    mov x5, 15       // height
    bl dib_rectangulo

    mov x2, 493       // start_x
    mov x3, 224       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 493       // start_x
    mov x3, 244       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 503
    mov x3, 229
    mov x4, 5
    mov x5, 15
    bl dib_rectangulo

    //letra T
    mov x2, 513       // start_x
    mov x3, 224       // start_y
    mov x4, 25       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 523       // start_x
    mov x3, 229       // start_y
    mov x4, 5       // width
    mov x5, 20       // height
    bl dib_rectangulo

    //letra E
    mov x2, 543       // start_x
    mov x3, 229       // start_y
    mov x4, 5       // width
    mov x5, 15       // height
    bl dib_rectangulo

    mov x2, 543       // start_x
    mov x3, 224       // start_y
    mov x4, 20       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 543       // start_x
    mov x3, 244       // start_y
    mov x4, 20       // width
    mov x5, 5       // height
    bl dib_rectangulo

    mov x2, 543       // start_x
    mov x3, 234       // start_y
    mov x4, 15       // width
    mov x5, 5       // height
    bl dib_rectangulo

    //letra L
    mov x2, 568       // start_x
    mov x3, 224       // start_y
    mov x4, 5       // width
    mov x5, 20       // height
    bl dib_rectangulo

    mov x2, 568       // start_x
    mov x3, 244       // start_y
    mov x4, 20       // width
    mov x5, 5      // height
    bl dib_rectangulo



    //letra O de abajo
    mov x2, 455       // start_x
    mov x3, 260       // start_y
    mov x4, 5       // width
    mov x5, 10       // height
    bl dib_rectangulo

    mov x2, 460       // start_x
    mov x3, 255       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 460       // start_x
    mov x3, 270       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 470
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    //letra D
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 479       // start_x
    mov x3, 255       // start_y
    mov x4, 5       // width
    mov x5, 20       // height
    bl dib_rectangulo

    mov x2, 484       // start_x
    mov x3, 255       // start_y
    mov x4, 8       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 484       // start_x
    mov x3, 270       // start_y
    mov x4, 8       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 492
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    //letra C
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 501       // start_x
    mov x3, 260       // start_y
    mov x4, 5       // width
    mov x5, 10       // height
    bl dib_rectangulo

    mov x2, 506       // start_x
    mov x3, 255       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 506       // start_x
    mov x3, 270       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    //guion bajo
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 520
    mov x3, 270
    mov x4, 15
    mov x5, 5
    bl dib_rectangulo
    
    //numero dos
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 539
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 544
    mov x3, 255
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 554
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 549
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 539
    mov x3, 270
    mov x4, 20
    mov x5, 5
    bl dib_rectangulo
    
    //numero cero
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 563
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    mov x2, 568
    mov x3, 255
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 578
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    mov x2, 568
    mov x3, 270
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    //numero dos
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 592
    mov x3, 255
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 602
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 587
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 587
    mov x3, 270
    mov x4, 20
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 597
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    //numero cinco
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 612
    mov x3, 255
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 612
    mov x3, 259
    mov x4, 5
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 612
    mov x3, 263
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 627
    mov x3, 267
    mov x4, 5
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 612
    mov x3, 271
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo

    mov x30, x28

ret
