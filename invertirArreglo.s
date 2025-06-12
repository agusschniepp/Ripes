#Invertir arreglo

.data
array:
    .word 2,3,4,5,6,7,8,9
.text
main:
    la a0, array
    li a1, 7 #longitud array
    jal ra invertirArreglo
    fin:
        j fin
    invertirArreglo:
        addi sp, sp, -4
        sw ra, (0)sp
        mv t0, a0
        for:
            li t1, 0
            loop:
                slli t2, t1, 2
                add t3, t0, t2
                lw a0 (0)t3
                jal ra F_AUX_INV
                sw a0, (0)t3
                beq t1, a1, terminar
                addi t1, t1, 1
                j loop
            terminar:
                lw ra, (0)sp
                addi sp, sp, 4
                jr ra


    F_AUX_INV:
        addi sp, sp, -12
        sw ra, (0)sp
        sw t0, (4)sp
        sw t1, (8)sp
        li t0, 0xFFFFFFFF
        mv t1, a0
        xor t1, t0, t1
        addi t1, t1, 1
        mv a0, t1
        lw ra, (0)sp
        lw t0, (4)sp
        lw t1, (8)sp
        addi sp, sp, 12
        jr ra
