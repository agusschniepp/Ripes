#Factorial Recursivo
li a0, 0
jal ra fact
fin: j fin

fact:
    addi sp, sp, -16
    sw ra, (0)sp
    sw s1, (4)sp
    beq a0, zero, terminar
    mv s1, a0
    addi a0, a0, -1 # x-1
    jal ra fact #fact(x-1)
    mul a0, s1, a0
    lw s1, (4)sp
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
    terminar:
        addi a0, zero, 1
        lw ra, (0)sp
        addi sp, sp, 16
        jr ra
