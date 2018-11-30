.data
star:	.asciiz "*"
space:	.asciiz " "
newline:	.asciiz "\n"

.text
.globl main

main:
	li $s0, 5 #length = 5
	li $s1, 0 #i = 0
	li $s2, 0 #j = 0
	
	li $t7, 0 #for i+length
	li $t8, 0 #for length - i
	li $t9, 0 #for (length - i) - 1
	
	li $t0, 0 #result of "slt $t0, $s1, $s0" (in outter for statement)
	li $t1, 0 #result of "slt $t1, $s2, $t7" (in inner for statement)
	li $t2, 0 #result of "slt $t2, $s2, $t9" (in if statement)

#start "outter for" statement
for1:
	#conditional statement in "outter for" statement
	slt $t0, $s1, $s0
	beq $t0, $0, out
	
#start "inner for" statement
for2:
	#conditional statement in "inner for" statement
	add $t7, $s1, $s0
	slt $t1, $s2, $t7
	beq $t1, $0, out1
	
#start "if" statement
	#conditional statement in "if" statement
	sub $t8, $s0, $s1
	subi $t9, $t8, 1
	slt $t2, $s2, $t9
	beq $t2, $0, else 
	
	#print "space"
	li $v0, 4
	la $a0, space
	syscall
	
	#Increase expression for "inner for" statement
	addi $s2, $s2, 1
	j for2
else:	
	#print "star"
	li $v0, 4
	la $a0, star
	syscall
	
	#increase expression for "inner for" statement
	addi $s2, $s2, 1
	j for2
#"if" statement end

out1:
	#initialize control variable for "inner for" statement
	sub $s2, $s2, $t7
	
	#print "newline"
	li $v0, 4
	la $a0, newline
	syscall
	
#"inner for" end
	
	#increase expression for "outter for"
	addi $s1, $s1, 1
	j for1	
out:
	#initialize control variable for "outter for" statement
	sub $s1, $s1, $s0
#"outter for" end






	
