.data
input_print:	.asciiz "Enter Year : "
str1:	.asciiz " is a Leap year"
str2:	.asciiz " is a Ordinary year"
newline:	.asciiz "\n"
exit:	.asciiz "exit program"
#$s0: year

.text
.globl main

main:
	li $s0, 0
	li $s1, 0
	li $s2, 0
	li $s3, 0
	li $t0, 0
	li $t1, 0
	li $t2, 4
	li $t3, 0
	li $t4, 100
	li $t5, 0
	li $t6, 400
	
while:	
	bne $t0, $t0, out
	
	li $v0, 4
	la $a0, input_print
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	div $t1, $s0, $t2
	mfhi $s1
	bne $s1, $0, first_else
	
	div $t3, $s0, $t4
	mfhi $s2
	bne $s2, $0, second_else
	
	div $t5, $s0, $t6
	mfhi $s3
	bne $s3, $0, third_else
	
	li $v0,1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j while
third_else:
	li $v0,1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j while
	
second_else:
	li $v0,1
	move $a0, $s0
	syscall

	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j while
	
first_else:
	li $v0,1
	move $a0, $s0
	syscall

	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j while
	
out:
	li $v0, 4
	la $a0, exit
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
