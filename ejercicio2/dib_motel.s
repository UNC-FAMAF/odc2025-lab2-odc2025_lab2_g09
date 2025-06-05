.global dib_motel

dib_motel:

	mov x28, x30

    //COLOR_WALL
    movz x1, 0xFF2E, lsl #16 
    movk x1, 0x4659, lsl #0 

    //primer edificio
    mov x2, 25       
    mov x3, 310       
    mov x4, 205       
    mov x5, 170
    bl dib_rectangulo

    //tercer edifcio
    mov x2, 400       
    mov x3, 280       
    mov x4, 200       
    mov x5, 200
    bl dib_rectangulo

    //loop ventanas primer edificio
    //COLOR_YELLOW_LIGHT
    movz x1, 0xFFFE, lsl #16 
    movk x1, 0xAA63, lsl #0 
    mov x19, 315        // y inicial
    .loop_fila:
        mov x21, 30          // x inicial por fila
    .loop_col:
        mov x2, x21          // x
        mov x3, x19         // y
        mov x4, 35          // ancho
        mov x5, 50          // alto
        bl dib_rectangulo

        add x21, x21, 40      // avanzar a siguiente ventana
        cmp x21, 190
        ble .loop_col

        add x19, x19, 55    // avanzar a siguiente fila
        cmp x19, 425
        ble .loop_fila

    //COLOR_WALL_SHADOW
    movz x1, 0xFF43, lsl #16 
    movk x1, 0x5D73, lsl #0 
    //segundo edificio
    mov x2, 190
    mov x3, 360
    mov x4, 220
    mov x5, 120
    bl dib_rectangulo     


    //COLOR_YELLOW_LIGHT
    movz x1, 0xFFFE, lsl #16 
    movk x1, 0xAA63, lsl #0 
    //loop ventanas segundo edificio
    mov x19, 380        
    .loop_fila_2:
        mov x21, 210          
    .loop_col_2:
        mov x2, x21          
        mov x3, x19         
        mov x4, 20         
        mov x5, 30          
        bl dib_rectangulo

        add x21, x21, 40      
        cmp x21, 400
        ble .loop_col_2

        add x19, x19, 55   
        cmp x19, 465
        ble .loop_fila_2

    //loop ventanas tercer edificio
    mov x19, 300        
    .loop_fila_3:
        mov x21, 430          
    .loop_col_3:
        mov x2, x21          
        mov x3, x19         
        mov x4, 20          
        mov x5, 30          
        bl dib_rectangulo

        add x21, x21, 40      
        cmp x21, 570
        ble .loop_col_3

        add x19, x19, 55    
        cmp x19, 465
        ble .loop_fila_3

    //ventanas apagadas
    //COLOR_BLUE_GRAY
    movz x1, 0xFF7A, lsl #16 
    movk x1, 0x95A7, lsl #0 
    //ventana 4 en segundo edifcio
    mov x2, 330       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo 
    //ventana 7 en segundo edificio
    mov x2, 250       
    mov x3, 435       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 9 en segundo edificio
    mov x2, 330
    mov x3, 435
    mov x4, 20
    mov x5, 30
    bl dib_rectangulo
    //ventana 10 en segundo edificio
    mov x2, 370       
    mov x3, 435       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana 2 en tercer edificio
    mov x2, 470       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 3 en tercer edificio 
    mov x2, 510       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 4 en tercer edificio 
    mov x2, 550       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 6 en tercer edificio
    mov x2, 470       
    mov x3, 355       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 9 en tercer edificio 9
    mov x2, 430       
    mov x3, 410       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 10 en tercer edificio 
    mov x2, 470       
    mov x3, 410       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 12 en tercer edificio 
    mov x2, 550       
    mov x3, 410       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    //ventana 15 en tercer edificio 
    mov x2, 510       
    mov x3, 465       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo


	mov x30, x28
    
ret
