#Review Input
.data
input_num:	.asciiz "input num: "
input_str:	.asciiz "input str: "
newline:	.asciiz "\n"
myspace:	.space 20

.text
.globl main

main:
	li $v0, 4
	la $a0, input_num
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0, 4
	la $a0, input_str
	syscall
	
	li $v0, 8
	la $a0, myspace
	li $a1, 20
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 4
	la $a0, myspace
	syscall
	
	li $v0, 10
	syscall