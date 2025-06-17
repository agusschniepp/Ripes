#Funcion invertir arreglo
.data
    arreglo: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    largo:   .word 10
.text
main:
    la a0, arreglo
    la a1, largo
    lw a1, (0)a1
    jal ra invertirArreglo
fin: j fin

invertirArreglo:
    addi sp, sp, -16
    sw ra, (0)sp
    sw s1, (4)sp
    for:
        li t0, 0
        mv s1, a0
        loop:
            slli t1, t0, 2
            add t2, s1, t1
            bge t0, a1, terminar
            lw a0, (0)t2
            jal ra inv
            sw a0, (0)t2
            addi t0, t0, 1
            j loop
        terminar:
            lw ra, (0)sp
            lw s1, (4)sp
            addi sp, sp, 16
            jr ra

inv:
    addi sp, sp, -16
    sw ra, (0)sp
    xori a0, a0, -1
    addi a0, a0, 1
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
