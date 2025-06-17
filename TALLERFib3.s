li a0, 6
jal ra fib3
fin: j fin
fib3:
    addi sp, sp, -16
    sw ra, (0)sp
    sw s1, (4)sp
    sw s2, (8)sp
    sw s3, (12)sp
    beq a0, zero, casoBase_0
    li t0, 1
    beq a0, t0, casoBase_1
    li t0, 2
    beq a0, t0, casoBase_2
    mv s3, a0
    addi a0, s3, -1
    jal ra fib3
    mv s1, a0
    addi a0, s3, -2
    jal ra fib3
    mv s2, a0
    addi a0, s3, -3
    jal ra fib3
    add t1, s1, s2
    add a0, a0, t1
    lw ra, (0)sp
    lw s1, (4)sp
    lw s2, (8)sp
    lw s3, (12)sp
    addi sp, sp, 16
    jr ra
    
casoBase_0:
    addi a0, zero, 0
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
    
casoBase_1:
    addi a0, zero, 1
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
    
casoBase_2:
    addi a0, zero, 2
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
