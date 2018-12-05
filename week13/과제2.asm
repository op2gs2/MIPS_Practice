.data
num:	.asciiz "input num"
pow:	.asciiz "input pow"

.text
.globl main

main:
	li $s0, 0 #num = $s0
	li $s1, 0 #pow = $s1
	li $s2, 0 #result = $s2
	
	#print num
	li $v0, 4
	la $a0, num
	syscall
	
	#input num ($s0) value
	li $v0, 5
	syscall
	move $s0, $v0
	
	#print pow
	li $v0, 4
	la $a0, pow
	syscall
	
	#input pow ($s1) value
	li $v0, 5
	syscall
	move $s1, $v0
	
	move $a0, $s0 #a0 = num in ex02()
	move $a1, $s1 #a1 = pow in ex02()
	
	#made a stack space
	addi $sp, $sp, -8
	
	#insert data to stack
	sw $s0, 4($sp)
	sw $s1, 0($sp)
	
	#call ex02()
	jal ex02
	
	#result = ex02(num, pow)
	move $s2, $v1
	
	#out data from stack
	lw $s1, 0($sp)
	lw $s0, 4($sp)

	#restore stack space
	addi $sp, $sp, 8
	
	#print result from ex02()
	li $v0, 1
	move $a0, $s2
	syscall
	
	#return 0
	li $v0, 10
	syscall
	
ex02:
	li $s0, 1  #result = $s0 in ex02()
	
	li $t0, 0 # i = 0
for:
	slt $t2, $t0, $a1 # i < pow
	beq $t2, $0 out #if $t2 is 0 than go out
	mul $s0, $s0, $a0 #result *= num
	addi $t0, $t0, 1 # i++
	j for 
out:
	#return 
	move $v1, $s0
	jr $ra
	