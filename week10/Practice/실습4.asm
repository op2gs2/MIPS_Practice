.data

.text
.globl main

main:
	li $s0, 1 #$s0 = pow
	li $s1, 0 #s1 = x
	li $t0, 128
	
while:
	beq $s0, $t0,done
	sll $s0, $s0, 1
	addi $s1, $s1, 1
	j while
	
	
done:
	li $v0,1
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall

	