.data
star:	.asciiz "*"
newline:	.asciiz "\n"

.text
.globl main

main:
	li $s0, 1 #$s0 = i
	li $s1, 0 #s1 = j
	li $t0, 5 #iteration count
	
Outterfor:
	beq $s0, $t0, done #바깥 반복문의 분기 결정

Innerfor:
	beq $s1, $s0, goto #안쪽 반복문의 분기 결정
	li $v0, 4
	la $a0, star #별 출력
	syscall
	addi $s1, $s1, 1 #j++
	j Innerfor
	
goto:	#안쪽 반복문 실행후, 안쪽과 바깥쪽 반복문의 사이
	add $s1, $0, $0 #j를 0으로 초기화, 그래야 안쪽 반복문이 제대로 돌아감
	addi $s0, $s0, 1 #i++
	li $v0, 4
	la $a0, newline #개행 출력
	syscall
	j Outterfor #바깥 반복문으로 돌아감

done:
	li $v0, 10
	syscall

	