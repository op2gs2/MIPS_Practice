#Assignmnet Input studentName And Number print

#.data section is assign data
.data
#this data that print or use before Input
str1: .asciiz "Your Name: "
str2: .asciiz "Your Student number: "
myname:	.space 20

#this data use for Print with Inputed data
str11:	.asciiz "My Name is "
str22:	.asciiz "My Student Number is "


.text
.globl main

main:
#input name
	#print str1 for print input
	li $v0, 4
	la $a0, str1
	syscall

	#input String type data
	li $v0, 8
	#myname is a some like variable for store String data and myname store in $a0 registory
	la $a0, myname
	#In $a1 registory, there is value that limit myname`s size
	#Because, If didn`t limit size, It can be overflow themself
	la $a1, 20
	syscall
	
#input student_number
	#print str2 for print input
	li $v0, 4
	la $a0, str2
	syscall
	
	#input Integer data through $v0
	li $v0, 5
	syscall
	
	#move data from $v0 to $s0
	#because, $v0 is a system registory
	move $s0, $v0
	
#Print name
	#print str11 for print input
	li $v0, 4
	la $a0, str11
	syscall
	
	#Print String value that is in myname that stored in $a0.
	li $v0, 4
	la $a0, myname
	syscall
	
#Print student_number
	#print str22 for print input
	li $v0, 4
	la $a0, str22
	syscall
	
	#Print Integer value that stored in $s0
	li $v0, 1
	#move value from $s0 to $a0.
	#because, for execute instructor, have to move $a registory
	move $a0, $s0
	syscall
	
#Program`s End
	li $v0, 10
	syscall
	
	