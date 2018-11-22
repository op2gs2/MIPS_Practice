#practice of mult & div
#Multivariate performs multiplication operations, and Div operation performs division operations.
#The calculation results of multi-operation are both stored in mflo / mfhi.
#The calculation results of the Div operation are different. Mflo has its share and mfhi has the rest.
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
	
	li $s0, 5
	li $s1, 3
	mult $s0, $s1
	
	li $v0, 1
	mflo $a0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	div $s0, $s1
	
	li $v0, 1
	mflo $a0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 1
	mfhi $a0
	syscall
	
	li $v0, 10
	syscall