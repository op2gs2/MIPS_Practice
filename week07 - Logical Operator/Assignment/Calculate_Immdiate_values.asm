#there is two immdiate values: "0xA7D295F6" and "0xE74FB45F"
#$s0 is a AND value and $s1 is a OR value.
#$s2 is XOR value of $s0 and $s1, $s3 is NOR value of $s0, $s1.
#Calculate $s0 to $s3.

.data

.text
.globl main

main:
	li $t0, 0xA7D295F6
	li $t1, 0xE74FB45F
	
	and $s0, $t0, $t1
	or $s1, $t0, $t1
	
	xor $s2, $s0, $s1
	nor $s3, $s0, $s1
	
	li $v0, 10
	syscall
