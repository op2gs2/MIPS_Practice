#this program print my student_number and name
.data
stdnum: .asciiz "20175111"
newline: .asciiz  "\n"
stdname: .asciiz "KimDongYoung"


.text
.globl main

main:
	li $v0, 4
	la $a0, stdnum
	syscall 
	
	li $v0, 4
	la $a0, newline
	syscall 
	
	li $v0, 4
	la $a0, stdname
	syscall 
	
	li $v0, 10
	syscall 