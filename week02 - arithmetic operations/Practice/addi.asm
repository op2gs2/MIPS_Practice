#practice addi
#addi is The addi operation is an operation that adds an immediate and register.
#immediate is a 16-bit Constant value.
.data
str: .asciiz "20175111 / KimDongYoung"
newline: .asciiz  "\n"


.text
.globl main
main:
	li $v0, 4
	la $a0, str
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $s0, 20
	addi $s1, $s0, 10
	addi $s2, $s0, -10
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 10
	syscall