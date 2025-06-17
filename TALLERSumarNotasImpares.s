.data
alumnos:
    .half 1001
    .byte 7
    .half 1002
    .byte 5
    .half 1003
    .byte 5
    .half 1007
    .byte 5
    .half 1008
    .byte 5
    .half 0
.text
main:
    la a0, alumnos
    jal ra notasImpares
fin:
    j fin
notasImpares:
    addi sp, sp, -16
    sw ra, (0)sp
    sw s1, (4)sp
    mv s1, a0
    loop:
        lh t0, (0)s1
        beq t0, zero, terminar
        andi, t0, t0, 1
        bne t0, zero, sumarNota
    continuar:
        addi s1, s1, 3
        j loop
        
    terminar:
        lw ra, (0)sp
        lw s1, (4)sp
        addi sp, sp, 16
        jr ra
    sumarNota:
        lb t1, (2)s1
        add t2, t2, t1
        j continuar
