#practice Input String
#syscall code 8 : read string
#$a0 : address where string to be stored
#$a1 : length of string buffer

.data
str1:	.asciiz "Your name: "
str2:	.asciiz "My age is "
myname:	.space 20

.text
.globl main

main:
	li $v0, 4
	la $a0, str1
	syscall

#Input String data
	li $v0, 8
	#myname is a some like variable for store String data and myname store in $a0 registory
	la $a0, myname
	#In $a1 registory, there is value that limit myname`s size
	#Because, If didn`t limit size, It can be overflow themself
	li $a1, 20
	syscall
	
	li $v0, 4
	la $a0, str2
	syscall

#print String data
	#Print String value that is in myname that stored in $a0.
	li $v0, 4
	la $a0, myname
	syscall
	
	li $v0, 10
	syscall
