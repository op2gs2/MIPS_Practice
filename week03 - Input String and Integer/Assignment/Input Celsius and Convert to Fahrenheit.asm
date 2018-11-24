#assignment of Input Celsius and Convert to Fahrenheit

#define data area
.data
str: .asciiz "20175111 / KimDongYoung"
newline: .asciiz  "\n"
str1: "Celsius: "
str1_v: "5"
str2: "Fahrenheit: "

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
	
#...and print Celsius value
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 4
	la $a0, str1_v
	syscall
	
#break up I/O line
	li $v0, 4
	la $a0, newline
	syscall

#calculate F=(9/5)*celsius+32
#First, calculate (9*Celsius) 
	li $s1, 9
	li $s2, 5
	mult $s1, $s2
	
#and save value in $s3
	mflo $s3
	syscall
	
	

#Second, calculate ($t0 / 5) 
#and.. set Celsius as 5
	li $s4, 5
	div $s3, $s4
	
#and save value in $t1
	mflo $s5
	syscall


#Third, calculate ($t1 + 32) and save value in $t1
	addi $t1, $s5, 32

#finally print Fahrenheit value
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall

#end this code
	li $v0, 10
	syscall
