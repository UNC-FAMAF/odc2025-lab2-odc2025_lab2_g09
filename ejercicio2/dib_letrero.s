.global dib_letrero

dib_letrero:
    mov x28, x30 

    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0


	// letra M
    mov x2, 405       // start_x
    mov x3, 224       // start_y
    mov x4, 5       // width
    mov x5, 25       // height
    bl dib_rectangulo

    mov x2, 409
    mov x3, 229
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    mov x2, 415
    mov x3, 234
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    mov x2, 421
    mov x3, 229
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    mov x2, 426
    mov x3, 224
    mov x4, 5
    mov x5, 25
    bl dib_rectangulo


    //letra O de arriba
    mov x2, 438       // start_x
    mov x3, 229       // start_y
    mov x4, 5       // width
    mov x5, 15       // height
    bl dib_rectangulo

    mov x2, 443       // start_x
    mov x3, 224       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 443       // start_x
    mov x3, 244       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 453
    mov x3, 229
    mov x4, 5
    mov x5, 15
    bl dib_rectangulo

    //letra T
    mov x2, 463       // start_x
    mov x3, 224       // start_y
    mov x4, 25       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 473       // start_x
    mov x3, 229       // start_y
    mov x4, 5       // width
    mov x5, 20       // height
    bl dib_rectangulo

    //letra E
    mov x2, 493       // start_x
    mov x3, 229       // start_y
    mov x4, 5       // width
    mov x5, 15       // height
    bl dib_rectangulo

    mov x2, 493       // start_x
    mov x3, 224       // start_y
    mov x4, 20       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 493       // start_x
    mov x3, 244       // start_y
    mov x4, 20       // width
    mov x5, 5       // height
    bl dib_rectangulo

    mov x2, 493       // start_x
    mov x3, 234       // start_y
    mov x4, 15       // width
    mov x5, 5       // height
    bl dib_rectangulo

    //letra L
    mov x2, 518       // start_x
    mov x3, 224       // start_y
    mov x4, 5       // width
    mov x5, 20       // height
    bl dib_rectangulo

    mov x2, 518       // start_x
    mov x3, 244       // start_y
    mov x4, 20       // width
    mov x5, 5      // height
    bl dib_rectangulo



    //letra O de abajo
    mov x2, 405       // start_x
    mov x3, 260       // start_y
    mov x4, 5       // width
    mov x5, 10       // height
    bl dib_rectangulo

    mov x2, 410       // start_x
    mov x3, 255       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 410       // start_x
    mov x3, 270       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 420
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    //letra D
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 429       // start_x
    mov x3, 255       // start_y
    mov x4, 5       // width
    mov x5, 20       // height
    bl dib_rectangulo

    mov x2, 434       // start_x
    mov x3, 255       // start_y
    mov x4, 8       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 434       // start_x
    mov x3, 270       // start_y
    mov x4, 8       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 442
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    //letra C
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 451       // start_x
    mov x3, 260       // start_y
    mov x4, 5       // width
    mov x5, 10       // height
    bl dib_rectangulo

    mov x2, 456       // start_x
    mov x3, 255       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 456       // start_x
    mov x3, 270       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    //guion bajo
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 470
    mov x3, 270
    mov x4, 15
    mov x5, 5
    bl dib_rectangulo
    
    // 1er numero dos
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 489
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 494
    mov x3, 255
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 504
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 499
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 489
    mov x3, 270
    mov x4, 20
    mov x5, 5
    bl dib_rectangulo
    
    //numero cero
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 513
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    mov x2, 518
    mov x3, 255
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 528
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    mov x2, 518
    mov x3, 270
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    // 2do numero dos
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 542
    mov x3, 255
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 552
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 537
    mov x3, 260
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 537
    mov x3, 270
    mov x4, 20
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 547
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    //numero cinco
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 562
    mov x3, 255
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 562
    mov x3, 259
    mov x4, 5
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 562
    mov x3, 263
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 577
    mov x3, 267
    mov x4, 5
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 562
    mov x3, 271
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo

    mov x30, x28

ret
