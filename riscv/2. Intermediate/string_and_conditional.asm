.data

par: .string "Par!"
impar: .string "Impar!"

.text

	li a7, 5
	ecall
	
	li t0, 2
	
	rem a0, a0, t0
	
	li t1, 1
	
	beq a0, t1, if # Se a0 (resto da div) for igual a t1, vai para o if. Se não, vai para a próxima linha 
	
	
else:
	la a0, par
	li a7, 4
	ecall
		
	j end
if:
	la a0, impar
	li a7, 4
	ecall
	
	li a7, 1
	ecall
end:
	li a7, 10
	ecall