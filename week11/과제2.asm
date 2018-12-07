.data
input:	.asciiz "input :"
result:	.asciiz "result:"
newline:	.asciiz "\n"

.text
.globl main

main:
	li $s0, 0 #$s0 = i
	li $s1, -1234 #s1 = num
	li $s2, 0 #s2 = result
	li $t0, 0 #store result of i%2
	li $t1, 2 #assign register as 2
	
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
for:
	beq $s0, $s1,done
	
	div $s0, $t1
	mfhi $t0
	
	bne $t0, $0 ,notcal
	add $s2,$s2,$s0 #result += result + i
	
notcal:	
	addi $s0, $s0, 1
	j for
	
	
done:
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0,1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 10
	syscall
