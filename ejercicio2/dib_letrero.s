.global dib_letrero

dib_letrero:
    mov x28, x30 

    //MOTEL
    //dibuja M
    movz x1, 0xFFe6, lsl #16 
    movk x1, 0x8d3e, lsl #0
    mov x0, x20
    mov x2, 455       
    mov x3, 224     
    bl dibujar_M

    //dibuja O
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    mov x2, 488       // start_x
    mov x3, 229       // start_y
    mov x4, 5       // width
    mov x5, 3       // height
    bl dibujar_O

    //letra T
    mov x2, 513       
    mov x3, 224       
    mov x4, 25       
    mov x5, 5      
    bl dib_rectangulo
    mov x2, 523       
    mov x3, 229       
    mov x4, 5       
    mov x5, 20       
    bl dib_rectangulo

    //letra E
    mov x2, 543       
    mov x3, 229       
    mov x4, 5       
    mov x5, 15       
    bl dib_rectangulo
    mov x2, 543       
    mov x3, 224       
    mov x4, 20       
    mov x5, 5      
    bl dib_rectangulo
    mov x2, 543       
    mov x3, 244      
    mov x4, 20       
    mov x5, 5      
    bl dib_rectangulo
    mov x2, 543       
    mov x3, 234      
    mov x4, 15       
    mov x5, 5       
    bl dib_rectangulo

    //letra L
    mov x2, 568       
    mov x3, 224       
    mov x4, 5       
    mov x5, 20      
    bl dib_rectangulo
    mov x2, 568       
    mov x3, 244       
    mov x4, 20       
    mov x5, 5      
    bl dib_rectangulo

    //ODC_2025  
    //dibuja O
    mov x2, 455      
    mov x3, 260      
    mov x4, 5       
    mov x5, 2      
    bl dibujar_O
    
    //letra D
    mov x2, 479       
    mov x3, 255      
    mov x4, 5       
    mov x5, 20       
    bl dib_rectangulo
    mov x2, 484       
    mov x3, 255      
    mov x4, 8       
    mov x5, 5      
    bl dib_rectangulo
    mov x2, 484      
    mov x3, 270       
    mov x4, 8       
    mov x5, 5      
    bl dib_rectangulo
    mov x2, 492
    mov x3, 260
    mov x4, 5
    mov x5, 10
    bl dib_rectangulo
    
    movz x1, 0xFFe6, lsl #16 
    movk x1, 0x8d3e, lsl #0
    //letra C
    mov x2, 501       
    mov x3, 260       
    mov x4, 5      
    mov x5, 10      
    bl dib_rectangulo
    mov x2, 506       
    mov x3, 255       
    mov x4, 10      
    mov x5, 5      
    bl dib_rectangulo
    mov x2, 506      
    mov x3, 270      
    mov x4, 10       
    mov x5, 5       
    bl dib_rectangulo
    
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    //guion bajo
    mov x2, 520
    mov x3, 270
    mov x4, 15
    mov x5, 5
    bl dib_rectangulo

    //dibuja 2
    mov x2, 539
    mov x3, 260
    bl dibujar_numero_2
    
    //dibuja O
    movz x1, 0xFFe6, lsl #16 
    movk x1, 0x8d3e, lsl #0
    mov x2, 563
    mov x3, 260
    mov x4, 5
    mov x5, 2
    bl dibujar_O

    //dibuja 2
    mov x2, 587
    mov x3, 260
    bl dibujar_numero_2
    
    movz x1, 0xFFFF, lsl #16 
    movk x1, 0xFF00, lsl #0
    //numero cinco
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

//funciones de letras
//Letras
dibujar_M:
    mov x29, x30 
    // Guardar posición inicial (x_base, y_base)
    mov x16, x2        // x_base
    mov x17, x3        // y_base

    // Parte izquierda de la M
    mov x2, x16
    mov x3, x17
    mov x4, 5
    mov x5, 25
    bl dib_rectangulo

    // Primer diagonal
    add x2, x16, 4     // x_base + 4
    add x3, x17, 5     // y_base + 5
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    // Segunda diagonal
    add x2, x16, 10
    add x3, x17, 10
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    // Tercer diagonal
    add x2, x16, 16
    add x3, x17, 5
    mov x4, 6
    mov x5, 5
    bl dib_rectangulo

    // Parte derecha de la M
    add x2, x16, 21
    mov x3, x17
    mov x4, 5
    mov x5, 25
    bl dib_rectangulo

    mov x30, x29
ret
dibujar_O:
    // Guardar return address y posición base
    mov x29, x30        // guardar link register
    mov x16, x2         // x_base
    mov x17, x3         // y_base
    mov x19, x5         // alto base (multiplica el numero que pongas por 5)

    mov x18, 5         // ancho base
    mov x4, 5
    mul x5, x18, x19
    bl dib_rectangulo
    //top
    add x2, x16, 5
    sub x3, x17, 5
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    //bottom
    mul x18, x18, x19
    add x3, x17, x18
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo
    
    mov x18, 5         // ancho base
    add x2, x16, 15
    mov x3, x17
    mov x4, 5
    mul x5, x18, x19
    bl dib_rectangulo
    
 
    mov x30, x29
ret
dibujar_numero_2:
    // Guardar dirección de retorno y base (x, y)
    mov x29, x30
    mov x16, x2      // x_base
    mov x17, x3      // y_base

    // Parte superior izquierda
    mov x2, x16
    mov x3, x17
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo

    // Parte superior central
    add x2, x16, 5
    sub x3, x17, 5
    mov x4, 10
    mov x5, 5
    bl dib_rectangulo

    // Parte superior derecha
    add x2, x16, 15
    mov x3, x17
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo

    // Curva del medio
    add x2, x16, 10
    add x3, x17, 5
    mov x4, 5
    mov x5, 5
    bl dib_rectangulo

    // Línea base
    mov x2, x16
    add x3, x17, 10
    mov x4, 20
    mov x5, 5
    bl dib_rectangulo

    mov x30, x29
ret
