#practice R-type shift instructions
#R-type means that operand is a only Register.
#R-type_logical_Operator is 3 types: sll, srl, sra

#sll means "shift left logical"
#srl means "shift right logical"
#sra means "shift right arithmetic"

.data
str1:	.asciiz "sll: "
str2:	.asciiz "\nsrl: "
str3:	.asciiz "\nsra: "

.text
.globl main

main:
	li $s0, 56
	
	sll $s1,$s0,3
	srl $s2,$s0,3
	sra $s3,$s0,3
	
	li $v0, 4
	la $a0,str1
	syscall
	
	li $v0,1
	move $a0, $s1
	syscall
	
	li $v0, 4
	la $a0,str2
	syscall
	
	li $v0,1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0,str3
	syscall
	
	li $v0,1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall