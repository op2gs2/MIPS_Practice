.data
newline:	.asciiz "\n"

.text
.globl main

main:
	li $s0, -20
	
	sll $s1, $s0,2
	srl $s2, $s0,2
	sra $s3, $s0,2
	
	li $v0,1
	move $a0, $s1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0,1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0,1
	move $a0, $s3
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
