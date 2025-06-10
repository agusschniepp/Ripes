#Invertir

main:
    li a0, 9
    jal ra inv
    fin: j fin


inv:
    addi sp, sp, -4
    sw ra (0)sp
    li t0, 0xFFFFFFFF
    mv t1, a0
    xor t1, t0, t1
    addi t1, t1, 1
    mv a0, t1
    lw ra (0)sp
    addi sp, sp, 4
    jr ra
