#define data area
.data
str: .asciiz "20175111 / KimDongYoung"
newline: .asciiz  "\n"
star1: "*"
star2: "**"
star3: "***"
star4: "****"

#define text area
.text
.globl main
main:

#print str
	li $v0, 4
	la $a0, str
	syscall
	
#break up I/O line
	li $v0, 4
	la $a0, newline
	syscall
	
#print star1
	li $v0, 4
	la $a0, star1
	syscall
	
#break up I/O line
	li $v0, 4
	la $a0, newline
	syscall
	
#print star2
	li $v0, 4
	la $a0, star2
	syscall
	
#break up I/O line
	li $v0, 4
	la $a0, newline
	syscall
	
#print star3
	li $v0, 4
	la $a0, star3
	syscall
	
#break up I/O line
	li $v0, 4
	la $a0, newline
	syscall
	
#print star4
	li $v0, 4
	la $a0, star4
	syscall
	
#break up I/O line
	li $v0, 4
	la $a0, newline
	syscall
	
#end this code
	li $v0, 10
	syscall