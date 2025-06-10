#fibonacci Iterativo
main:
    li a0, 6
    jal ra, fib
fin:
    j fin
fib:
    bne a0, zero, elseif
    jr ra
    elseif:
        li t0, 1
        li t1, 2
        li t2, 0
        li t3, 1
        bne a0, t0, else
        jr ra
    else:
        beq a0, t1 return
        add t4, t2, t3
        mv t2, t3
        mv t3, t4
        addi t1, t1, 1
        j else
    return:
        add t4, t2, t3
        mv a0, t4
        jr ra
        
    