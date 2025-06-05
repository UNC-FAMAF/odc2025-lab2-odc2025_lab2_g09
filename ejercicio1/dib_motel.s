.global dib_motel

dib_motel:

	//
	mov x28, x30

    //COLOR_WALL
    movz x1, 0xFF2E, lsl #16 
    movk x1, 0x4659, lsl #0 

    //primer edificio
    mov x2, 80       
    mov x3, 310       
    mov x4, 200       
    mov x5, 120
    bl dib_rectangulo

    //tercer edifcio edificio
    mov x2, 450       
    mov x3, 280       
    mov x4, 190       
    mov x5, 140
    bl dib_rectangulo

    

    //COLOR_WALL_SHADOW
    movz x1, 0xFF43, lsl #16 
    movk x1, 0x5D73, lsl #0 

    //segundo edificio
    mov x2, 240       
    mov x3, 361       
    mov x4, 220       
    mov x5, 70
    bl dib_rectangulo     

    

    //Color alternativo COLOR_YELLOW_LIGHT
    movz x1, 0xFFFE, lsl #16 
    movk x1, 0xAA63, lsl #0 

    //ventana en tercer edifcio edificio 1
    mov x2, 480       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 7
    mov x2, 560       
    mov x3, 350       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 8
    mov x2, 600       
    mov x3, 350       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo 

    //ventana en tercer edifcio edificio 10
    mov x2, 520       
    mov x3, 400       
    mov x4, 20       
    mov x5, 20
    bl dib_rectangulo

    

    //ventana en segundo edifcio edificio 1 
    mov x2, 260       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 2
    mov x2, 292       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
 
    //ventana en segundo edifcio edificio 3
    mov x2, 324       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 4
    mov x2, 356       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    

    //ventana en segundo edifcio edificio 6
    mov x2, 420       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en primer edifcio edificio 1
    mov x2, 200       
    mov x3, 325       
    mov x4, 24       
    mov x5, 34
    bl dib_rectangulo

    //ventana en primer edifcio edificio 2
    mov x2, 240       
    mov x3, 325       
    mov x4, 24       
    mov x5, 34
    bl dib_rectangulo

    //Color alternativo COLOR_WINDOW_GLASS
    movz x1, 0xFFD0, lsl #16 
    movk x1, 0xDDE4, lsl #0 

    //ventana en segundo edifcio edificio 5
    mov x2, 388       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo 

    //ventana en tercer edifcio edificio 2
    mov x2, 520       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en tercer edifcio edificio 3
    mov x2, 560       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en tercer edifcio edificio 4
    mov x2, 600       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 6
    mov x2, 520       
    mov x3, 350       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    

    //ventana en tercer edifcio edificio 9
    mov x2, 480       
    mov x3, 400       
    mov x4, 20       
    mov x5, 20
    bl dib_rectangulo
    
    
    
    //ventana en tercer edifcio edificio 11
    mov x2, 560       
    mov x3, 400       
    mov x4, 20       
    mov x5, 20
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 12
    mov x2, 600       
    mov x3, 400       
    mov x4, 20       
    mov x5, 20
    bl dib_rectangulo


    
	//
	mov x30, x28


    
ret
