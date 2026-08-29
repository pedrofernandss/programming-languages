.text
	li a7, 5
	ecall
	mv s0, a0
	
	li a7, 5
	ecall
	mv s1, a0
	
	mv t0, s0
	
	li t1, 1
	li t2, 2
	
loop:
	# Branch if Greater Than
	bgt t0, s1, out # Se t0 > s1, vá para out. Se não, vá para a próx. linha
	
	rem t3, t0, t2 # Salvamos em t3, o resto da divisão de t0 com t2 - t3 = t0%t2
		
	beq t3, t1, imprime # Branch if Equal (Estamos selecionando os num. ímpares)
	
	j fim_imprime
imprime:
	
	mv a0, t0
	
	li a7, 1
	ecall
	
fim_imprime:
	addi t0, t0, 1 # t0 = t0 + 1
	
	j loop

out: 
	li a7, 10
	ecall
	