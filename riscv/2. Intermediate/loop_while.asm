.text
	li a7, 5
	ecall
	mv s0, a0
	
	li a7, 5
	ecall
	mv s1, a0
	
	mv t0, s0
	
loop:
	# Branch if Greater Than
	bgt t0, s1, out # Se t0 > s1, vá para out. Se não, vá para a próx. linha
	
	mv a0, t0
	
	li a7, 1
	ecall
	
	addi t0, t0, 1 # t0 = t0 + 1
	
	j loop

out: 
	li a7, 10
	ecall
	