.global loop_animacion

loop_animacion:

	mov x2, 100	// x2 = X
	mov x3, 100	// x3 = Y

	// guarda a X e Y
	mov x23, x2
	mov x24, x3

	loop_infinito_animacion:
		
		//redibuja la parte del fondo que está detrás del avion
		movz x1, 0xFF0D, lsl 16
		movk x1, 0x171F, lsl 00    
		mov x4, 54       
		mov x5, 46
		bl dib_rectangulo

		bl dib_nubes

		// dibuja el avion
		mov x2, x23
		mov x3, x24
		bl avion

		//seccion de la pared por donde pasa la avioneta
		movz x1, 0xFF2E, lsl #16 
		movk x1, 0x4659, lsl #0
		//pared
		mov x2, 0       // inicio_x
		mov x3, 50       // inicio_y
		mov x4, 90       // largo
		mov x5, 108       // altura
		bl dib_rectangulo
		movz x1, 0xFF35, lsl #16 
		movk x1, 0x1606, lsl #0
		//marco interno
		mov x2, 90       
		mov x3, 100       
		mov x4, 10       
		mov x5, 54       
		bl dib_rectangulo
		movz x1, 0xFF4C, lsl #16 
		movk x1, 0x2D17, lsl #0
		//marco externo
		mov x2, 100       
		mov x3, 100       
		mov x4, 5       
		mov x5, 54       
		bl dib_rectangulo

		//restaura posicion del avion 
		mov x2, x23
		mov x3, x24

		// lo deja en pantalla
		bl delay

		add x23, x23, 1    // mueve el avion
		subs xzr, x23, 300    // compara si X = 300
		b.ne loop_infinito_animacion    // si no lo es, salto
		add x24, x24, 1    // mantiene el avion en dicha posicion
		b loop_infinito_animacion

ret

delay:

	mov x0, 0
	movz x0, 0x0100, lsl #16
	L1: sub x0, x0, 1
		cbnz x0, L1

		mov x0, x20

ret
