.text
	li a7, 5
	ecall
	
	mv s0, a0 # Copying a0 to s0 to dont subscribe a0 in another input
	
	li a7, 5
	ecall
	
	mv s1, a0
	
	add a0, s0, s1
	
	li a7, 1
	ecall
	
	li a7, 10
	ecall