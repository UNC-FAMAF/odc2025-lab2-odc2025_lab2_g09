.global dib_nubes



dib_nubes:

	mov x28, x30
	mov x27, x20

    // color blanco 
    movz x1, 0xFFFF, lsl #16
    movk x1, 0xFFFF, lsl #0

	// nube del norte
    mov     x2, 330                // start_x
    mov     x3, 65                // start_y
    mov     x4, 80                 // width
    mov     x5, 20                 // height
    bl      dibujar_ovalo


	// nubes del este
    mov     x2, 490                // start_x
    mov     x3, 75                // start_y
    mov     x4, 140                 // width
    mov     x5, 28                 // height
    bl      dibujar_ovalo

    mov     x2, 449                // start_x
    mov     x3, 91                // start_y
    mov     x4, 102                 // width
    mov     x5, 30                 // height
    bl      dibujar_ovalo


	// nubes del oeste
    mov     x2, 50                // start_x
    mov     x3, 100                // start_y
    mov     x4, 110                 // width
    mov     x5, 20                 // height
    bl      dibujar_ovalo

    mov     x2, 122                // start_x
    mov     x3, 75                // start_y
    mov     x4, 120                 // width
    mov     x5, 40                 // height
    bl      dibujar_ovalo


	// nubes del centro
    mov     x2, 340                // start_x
    mov     x3, 145                // start_y
    mov     x4, 60                 // width
    mov     x5, 30                 // height
    bl      dibujar_ovalo

    mov     x2, 252                // start_x
    mov     x3, 155                // start_y
    mov     x4, 120                 // width
    mov     x5, 30                 // height
    bl      dibujar_ovalo

    mov     x2, 260                // start_x
    mov     x3, 140                // start_y
    mov     x4, 100                 // width
    mov     x5, 25                 // height
    bl      dibujar_ovalo


	// nubes del suroeste

    mov     x2, 55                // start_x
    mov     x3, 215                // start_y
    mov     x4, 120                 // width
    mov     x5, 30                 // height
    bl      dibujar_ovalo

    mov     x2, 90                // start_x
    mov     x3, 200                // start_y
    mov     x4, 100                 // width
    mov     x5, 25                 // height
    bl      dibujar_ovalo





	mov x30, x28
	mov x20, x27

	ret
