.data
num:	.asciiz "input num: "
value:	.asciiz "input value: "
sum:	.asciiz "sum: "

.text
.globl main
main:
	li $s0, 0 #num = $s0
	li $s1, 0 #sum = $s1
	
	#print num
	li $v0, 4
	la $a0, num
	syscall
	#input num ($s0) value
	li $v0, 5
	syscall
	move $s0, $v0
	
	#
	move $a1, $s0
	addi $sp, $sp, -4
	sw $s0, 0($sp)
	jal ex03
	lw $s0, 0($sp)
	addi $sp, $sp 4
	move $s1, $v1
	
	#print num
	li $v0, 4
	la $a0, sum
	syscall
	#print sum
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall
	
ex03:
	li $t0, 0 #value =  $t0 in ex03()
	li $s0, 0 #sum = $s0 in ex03()
	li $t1, 0 #i = 0
	li $t2, 0 #i < sum
	
for:
	slt $t2, $t1, $a1
	beq $t2, $0 out
	
	#print value
	li $v0, 4
	la $a0, value
	syscall
	#input value ($t0) value
	li $v0, 5
	syscall
	move $t0, $v0	
	add $s0, $s0, $t0
	
	addi $t1, $t1, 1
	j for
out:
	move $v1, $s0
	jr $ra
	
	
