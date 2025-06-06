.global dib_nubes



dib_nubes:

	//
	mov x28, x30

    // color blanco 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0

	// nube de arriba
    mov     x2, 380                // start_x
    mov     x3, 65                // start_y
    mov     x4, 80                 // width
    mov     x5, 20                 // height
    bl      dibujar_ovalo

	// nubes de la derecha
    mov     x2, 540                
    mov     x3, 75                
    mov     x4, 140                 
    mov     x5, 28                 
    bl      dibujar_ovalo

    mov     x2, 499                
    mov     x3, 91                
    mov     x4, 102                 
    mov     x5, 30                 
    bl      dibujar_ovalo

	// nubes de la izquierda
    mov     x2, 100                
    mov     x3, 100                
    mov     x4, 110                 
    mov     x5, 20                 
    bl      dibujar_ovalo

    mov     x2, 172                
    mov     x3, 75                
    mov     x4, 120                 
    mov     x5, 40                 
    bl      dibujar_ovalo

	// nubes del centro
    mov     x2, 390              
    mov     x3, 145               
    mov     x4, 60                
    mov     x5, 30                 
    bl      dibujar_ovalo

    mov     x2, 302               
    mov     x3, 155               
    mov     x4, 120               
    mov     x5, 30               
    bl      dibujar_ovalo

    mov     x2, 310                
    mov     x3, 140               
    mov     x4, 100                 
    mov     x5, 25                
    bl      dibujar_ovalo


    //
	mov x30, x28

	ret
