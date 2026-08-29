.text

	li a7, 5
	ecall
	
	li t0, 2
	
	rem a0, a0, t0
	
	li t1, 1
	
	beq a0, t1, if # Se a0 (resto da div) for igual a t1, vai para o if. Se não, vai para a próxima linha 
	
	j end

if:
	li a7, 1
	ecall
end:
	li a7, 10
	ecall