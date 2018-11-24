#Practice_I-type_logical_Operator
#I-type means that operand is a Register and Immediate (16bit constant value).
#I-type_logical_Operator is 3 types: andi, ori, xori
.data

.text
.globl main

main:
	li $s0, 0xFF
	
	andi $s1, $s0, 0x4A7C
	ori $s2, $s0, 0x4A7C
	xori $s3, $s0, 0x4A7C
	
	li $v0, 10
	syscall
