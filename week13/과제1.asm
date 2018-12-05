.data
newline:	.asciiz "\n"
.text
.globl main

main:
	li $a0, 0 #arguement of ex01()
	li $t0, 0 #$t0 = i
	li $t1, 10 #$t1 = 10
	li $t2, 0 #$t2 = 0 (result of i<10)
	li $t3, 2 #for give 2 (used in "temp =x * 2")
	
	li $s0, 0 #temp that declared in ex01()
	
for:
	#condition check
	slt $t2, $t0, $t1
	beq $t2, $0, out
	
	move $a0, $t0 #give argument to $a0
	jal ex01
	
	# i++
	addi $t0, $t0, 1
	j for
	
out:
	#return 0
	li $v0, 10
	syscall
ex01:
	# temp =x * 2
	mul $s0, $a0, $t3
	
	#input temp ($s0) value
	li $v0, 1
	move $a0, $s0
	syscall
	
	#print newline
	li $v0, 4
	la $a0, newline
	syscall
	
	#return to function called area (go to main)
	jr $ra
	