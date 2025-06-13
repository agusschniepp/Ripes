#Multiplicacion
.text
main:
    li a0, 128
    li a1, 777
    jal ra mult
fin: j fin
    mult:
        addi sp, sp, -4
        sw ra, (0)sp
        li t0, 1
        mv t1, a0
        bne a1, zero, loop
        add a0, zero, zero
        j terminar
        loop:
            beq t0, a1, terminar
            add a0, a0, t1
            addi t0, t0, 1
            j loop
        terminar:
            lw ra, (0)sp
            addi sp, sp, 4