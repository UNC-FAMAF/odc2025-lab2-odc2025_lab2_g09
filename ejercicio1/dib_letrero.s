.global dib_letrero

dib_letrero:
    mov x28, x30 

    //letra O
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 410       // start_x
    mov x3, 265       // start_y
    mov x4, 5       // width
    mov x5, 10       // height
    bl dib_rectangulo

    mov x2, 415       // start_x
    mov x3, 260       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 415       // start_x
    mov x3, 275       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 425
    mov x3, 265
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    //letra D
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 434       // start_x
    mov x3, 260       // start_y
    mov x4, 5       // width
    mov x5, 20       // height
    bl dib_rectangulo

    mov x2, 439       // start_x
    mov x3, 260       // start_y
    mov x4, 8       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 439       // start_x
    mov x3, 275       // start_y
    mov x4, 8       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    mov x2, 447
    mov x3, 265
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    //letra C
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 456       // start_x
    mov x3, 265       // start_y
    mov x4, 5       // width
    mov x5, 10       // height
    bl dib_rectangulo

    mov x2, 461       // start_x
    mov x3, 260       // start_y
    mov x4, 10       // width
    mov x5, 5      // height
    bl dib_rectangulo

    mov x2, 461       // start_x
    mov x3, 275       // start_y
    mov x4, 10       // width
    mov x5, 5       // height
    bl dib_rectangulo
    
    //guion bajo
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 475
    mov x3, 275
    mov x4, 15
    mov x5, 5
    bl dib_rectangulo
    
    //numero dos
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 494
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 499
    mov x3, 260
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 509
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 504
    mov x3, 270
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 494
    mov x3, 275
    mov x4, 20
    mov x5, 5
    bl dib_rectangulo
    
    //numero cero
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 518
    mov x3, 260
    mov x4, 5
    mov x5, 20
    bl dib_rectangulo
    
    mov x2, 523
    mov x3, 260
    mov x4, 15
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 533
    mov x3, 265
    mov x4, 5
    mov x5, 15
    bl dib_rectangulo
    
    mov x2, 523
    mov x3, 275
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    //numero dos
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 547
    mov x3, 260
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 557
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 542
    mov x3, 265
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 542
    mov x3, 275
    mov x4, 20
    mov x5, 5
    bl dib_rectangulo
    
    mov x2, 552
    mov x3, 270
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo
    
    //numero cinco
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFF00, lsl #0
    mov x2, 567
    mov x3, 260
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 567
    mov x3, 264
    mov x4, 5
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 567
    mov x3, 268
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 582
    mov x3, 272
    mov x4, 5
    mov x5, 4
    bl dib_rectangulo
    
    mov x2, 567
    mov x3, 276
    mov x4, 20
    mov x5, 4
    bl dib_rectangulo

    mov x30, x28

ret
