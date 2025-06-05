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

    //tercer edifcio edificio
    mov x2, 400       
    mov x3, 280       
    mov x4, 200       
    mov x5, 200
    bl dib_rectangulo

    

    //COLOR_WALL_SHADOW
    movz x1, 0xFF43, lsl #16 
    movk x1, 0x5D73, lsl #0 

    //segundo edificio
    mov x2, 190
    mov x3, 360
    mov x4, 220
    mov x5, 120
    bl dib_rectangulo     

    

    //Color alternativo COLOR_YELLOW_LIGHT
    movz x1, 0xFFFE, lsl #16 
    movk x1, 0xAA63, lsl #0 

    //ventana en tercer edifcio edificio 1
    mov x2, 430       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 7
    mov x2, 510       
    mov x3, 350       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 8
    mov x2, 550       
    mov x3, 350       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo 

    //ventana en tercer edifcio edificio 10
    mov x2, 470       
    mov x3, 400       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en tercer edifcio edificio 13
    mov x2, 430       
    mov x3, 450       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    

    //ventana en segundo edifcio edificio 1 
    mov x2, 210       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 2
    mov x2, 242       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
 
    //ventana en segundo edifcio edificio 3
    mov x2, 274       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 4
    mov x2, 306       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 6
    mov x2, 370       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 7
    mov x2, 210       
    mov x3, 420       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 10
    mov x2, 306       
    mov x3, 420
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 11
    mov x2, 338       
    mov x3, 420       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo 

    //ventana en segundo edifcio edificio 14
    mov x2, 242       
    mov x3, 460
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 16
    mov x2, 306       
    mov x3, 460
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    // ventana en primer edifcio edificio 1
    mov x2, 30
    mov x3, 315       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 2
    mov x2, 70
    mov x3, 315       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 3
    mov x2, 110
    mov x3, 315       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 4
    mov x2, 150       
    mov x3, 315       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 5
    mov x2, 190
    mov x3, 315
    mov x4, 35
    mov x5, 45
    bl dib_rectangulo

    // ventana en primer edifcio edificio 6
    mov x2, 30
    mov x3, 370
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 7
    mov x2, 70
    mov x3, 370       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 8
    mov x2, 110
    mov x3, 370       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 9
    mov x2, 150       
    mov x3, 370
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 11
    mov x2, 30
    mov x3, 425
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 12
    mov x2, 70
    mov x3, 425       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 13
    mov x2, 110
    mov x3, 425       
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo

    // ventana en primer edifcio edificio 14
    mov x2, 150       
    mov x3, 425
    mov x4, 35       
    mov x5, 50
    bl dib_rectangulo


    //Color alternativo COLOR_WINDOW_GLASS
    movz x1, 0xFFD0, lsl #16 
    movk x1, 0xDDE4, lsl #0 

    //ventana en segundo edifcio edificio 5
    mov x2, 338       
    mov x3, 380       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo 

    //ventana en segundo edifcio edificio 8
    mov x2, 242       
    mov x3, 420       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 15
    mov x2, 274
    mov x3, 460
    mov x4, 20
    mov x5, 30
    bl dib_rectangulo

    //ventana en segundo edifcio edificio 18
    mov x2, 370       
    mov x3, 460       
    mov x4, 20       
    mov x5, 20
    bl dib_rectangulo


    //ventana en tercer edifcio edificio 2
    mov x2, 470       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en tercer edifcio edificio 3
    mov x2, 510       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    //ventana en tercer edifcio edificio 4
    mov x2, 550       
    mov x3, 300       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 6
    mov x2, 470       
    mov x3, 350       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    

    //ventana en tercer edifcio edificio 9
    mov x2, 430       
    mov x3, 400       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 14
    mov x2, 470       
    mov x3, 450       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo


    //ventana en tercer edifcio edificio 16
    mov x2, 550       
    mov x3, 450       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo

    
    
    //ventana en tercer edifcio edificio 11
    mov x2, 510       
    mov x3, 400       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo
    
    //ventana en tercer edifcio edificio 12
    mov x2, 550       
    mov x3, 400       
    mov x4, 20       
    mov x5, 30
    bl dib_rectangulo


	mov x30, x28


    
ret
