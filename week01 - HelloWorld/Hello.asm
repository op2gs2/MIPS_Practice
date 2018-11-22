#Content: Print "Hello Computer Architecture"
#Date: Sep. 5th, 2018
#name: KimDongYoung(LIFS(Global studies), 20175111)


#data section
.data
str:	.asciiz "Hello Computer Architecture"

#text section
.text
#declare main area
.globl main

#li:load Immediate
#la:load address
#"syscall" means what execute set register value
#$v0, 4 means print string("str" value)
#$v0, 10 means exit this code

main:
	li $v0, 4 
	la $a0, str
	syscall

	li $v0, 10
	syscall