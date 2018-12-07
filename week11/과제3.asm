.data
input:	.asciiz "input num (-999 for exit) :"
result:	.asciiz "result:"
newline:	.asciiz "\n"

.text
.globl main

main:
	li $s0, 0 #$s0 = i
	li $s1, -1234 #s1 = num
	li $s2, 0 #s2 = result
	
	li $t0, -999
	
	
while:
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	beq $s1, $t0,done
	
	add $s2, $s2, $s1
	j while
done:
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0,1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 10
	syscall
