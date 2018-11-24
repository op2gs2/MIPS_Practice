#Practice_R-type_logical_Operator
#R-type means that operand is a only Register.
#R-type_logical_Operator is 4 types: and, or, xor, nor

.data

.text
.globl main

main:
	li $s0, 0xFFFF0000
	li $s1, 0x46A1F0B7
	
	and $s2, $s0, $s1
	or $s3, $s0, $s1
	xor $s4, $s0, $s1
	nor $s5, $s0, $s1
	
	li $v0, 10
	syscall
