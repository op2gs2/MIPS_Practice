.data
print:	.asciiz "result :"
newline:	.asciiz "\n"

.text
.globl main

main:
	li $s0, 1 #$s0 = i
	li $s1, 1 #s1 = result
	li $t0, 10
	
for:
	beq $s0, $t0,done
	mul $s1, $s0, $s1
	addi $s0, $s0, 1
	j for
	
	
done:

	li $v0, 4
	la $a0, print
	syscall
	
	li $v0,1
	move $a0, $s1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 10
	syscall
