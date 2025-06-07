.global dib_nubes



dib_nubes:

	//
	mov x28, x30
////nube arriba 

    // color blanco 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0

	// nube de arriba
    mov     x2, x19                // start_x
    add x2, x2, 348             // Offset para la nube
    mov     x3, 65                // start_y
    mov     x4, 80                 // width
    mov     x5, 20                 // height
    bl      dibujar_ovalo


    
///nubes derecha 

    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0
    mov     x2, 499                // start_x
    sub     x2, x2, x21             // Offset para la nube                
    mov     x3, 91                
    mov     x4, 102                 
    mov     x5, 30                 
    bl      dibujar_ovalo

    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0
    mov     x2, 540                // start_x
    sub      x2, x2, x21             // Offset para la nube                
    mov     x3, 75                
    mov     x4, 120                 
    mov     x5, 28                 
    bl      dibujar_ovalo


////nubes izquierda

    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0
    mov     x2, x19                // start_x
    add x2, x2, 100             // Offset para la nube                
    mov     x3, 100                
    mov     x4, 110                 
    mov     x5, 20                 
    bl      dibujar_ovalo

    movz x1, 0xFFFE, lsl #16
    movk x1, 0xFFFF, lsl #0
    mov     x2, x19                // start_x
    add x2, x2, 172             // Offset para la nube                
    mov     x3, 75                
    mov     x4, 120                 
    mov     x5, 40                 
    bl      dibujar_ovalo

/// nubes centro 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0
    mov     x2, x19                // start_x
    add x2, x2, 310             // Offset para la nube                
    mov     x3, 125               
    mov     x4, 100                 
    mov     x5, 25                
    bl      dibujar_ovalo 

	mov x30, x28

	ret
