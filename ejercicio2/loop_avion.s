.global loop_avion

loop_avion:

	mov x2, 20	// x2 = X
	mov x3, 20	// x3 = Y

	// guarda a X e Y
	mov x23, x2
	mov x24, x3

loop_infinito_avion:

	// dibuja el avion
	mov x2, x23
	mov x3, x24
	bl avion

	// lo deja en pantalla
	bl delay

	// borra el avion
	mov x2, x23
	mov x3, x24
	bl dispawn_avion


	add x23, x23, 1    // mueve el avion
	subs xzr, x23, 300    // compara si X = 300
	b.ne loop_infinito_avion    // si no lo es, salto
	add x24, x24, 1    // mantiene el avion en dicha posicion
	b loop_infinito_avion















ret



