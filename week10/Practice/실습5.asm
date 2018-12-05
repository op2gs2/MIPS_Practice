.data

.text
.globl main

main:
	li $s0, 1 #$s0 = i
	li $s1, 0 #s1 = sum
	li $t0, 10
	
for:
	beq $s0, $t0,done
	add $s1, $s0, $s1
	addi $s0, $s0, 1
	j for
	
	
done:
	li $v0,1
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall

	