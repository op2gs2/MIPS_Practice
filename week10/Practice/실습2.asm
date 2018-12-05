.data
str1:	.asciiz "value of x is not Zero."
str2:	.asciiz "value of x is Zero."

.text
.globl main

main:
	li $s0, 0 #x
	li $v0, 4
	
	beq $s0, $0, else
	la $a0, str1
	syscall
	j done
	
else:
	la $a0, str2
	syscall
	
done:
	li $v0, 10
	syscall

	