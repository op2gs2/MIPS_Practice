#define data area
.data
str: .asciiz "20175111 / KimDongYoung"
newline: .asciiz  "\n"

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
	
#calculate express $s0 = $s1 + $s2 - $s3
#and.. define $s1 through $s3 and insert value in their register
	li $s1, 40
	li $s2, 5
	li $s3 15
#first divide and calculate express as $t0 = $s1 + $s2 and $s0 = $t0 - $s3
	add $t0, $s1, $s2
	sub $s0, $t0, $s3
	
#move calculated result value from $s0 to $a0
	li $v0,1
	move $a0, $s0
	syscall
	
#end this code
	li $v0, 10
	syscall