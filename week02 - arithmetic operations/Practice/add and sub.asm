#practice code of add and sub
#add is instruction for plus calculation,
#sub is instruction for subtract calculation.

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
	
	li $s1, 10
	li $s2, 20
	add $s0, $s1, $s2
	sub $s3, $s1, $s2
	
	li $v0,1
	move $a0, $s0
	syscall

	li $v0, 4
	la $a0, newline
	syscall 
	
	li $v0,1
	move $a0, $s3
	syscall
	
	li $v0,10
	syscall