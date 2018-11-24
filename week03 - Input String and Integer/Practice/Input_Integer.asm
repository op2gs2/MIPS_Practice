#practice Input Integer
#syscall code 5 : read integer
#integer returned in $v0


.data
str1:	.asciiz "Your age: "
str2:	.asciiz "My age is "

.text
.globl main

main:
	li $v0, 4
	la $a0, str1
	syscall
	
#Input Integer data
	#set type of SYSCALL system services as 5, means Input integer type data
	li $v0, 5
	syscall
	
	#Move data from $v0 to $s0.
	#because, $v0 is system registory, can use later.
	move $s0, $v0
	
	li $v0, 4
	la $a0, str2
	syscall
	
#Print Integer data
	#"li $v0, 1" means that set type of SYSCALL system services as 5 and It means Print integer type data
	li $v0, 1
	#Move data from $s0 to $a0.
	#because, $s0 isn`t use for print execute.
	#because, $v0 and $a0 is linked by assignment for execute Instructor.
	move $a0, $s0
	syscall
	
	li $v0, 10
	syscall
