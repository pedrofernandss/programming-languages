.data

hello: .string "\nHello, World!\n"

.text

	la a0, hello # Salvamos em a0 o endereço da nossa string
	
	li a7, 4 # Chamada ao S.O para imprimir uma string
	ecall

	li a7, 10 # Return 0
	ecall