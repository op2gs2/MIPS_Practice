.data
str1:	.asciiz "Odd"
str2:	.asciiz "Even"

.text
.globl main

main:
	li $s0, 0 #num
	li $s1, 0 #result of "num%2"
	li $t0, 2
	
	#input integer
	li $v0, 5
	syscall	
	move $s0, $v0
	
	#calculate "num%2" and save result in $s1
	div $s0, $t0
	mfhi $s1
	
	#branche if $s1 is odd, move to else
	beq $s1, $0, else
	
	#print "odd"
	li $v0, 4
	la $a0, str1
	syscall
	
	j done
	
else:
	#print "Even"
	li $v0, 4
	la $a0, str2
	syscall
	
done:
	li $v0, 10
	syscall
	
