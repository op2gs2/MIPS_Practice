#$s0 = 112, there is "$s0 * 4" and "$s0/16.
#if there is no used instruction, Write down reason why. 

.data
str1:	.asciiz "$s0 * 4: "
str2:	.asciiz "\n$s0/16: "

.text
.globl main

main:
	li $s0, 112
	
	sll $s1,$s0,2
	srl $s2,$s0,4
	sra $s3,$s0,4
	
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
	la $a0,str2
	syscall
	
	li $v0,1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall