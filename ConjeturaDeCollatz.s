#Profundiad de Collatz
.text
main:  
li a0, 11
jal ra f
fin:
    j fin
f:
    addi sp, sp, -16
    sw ra, (0)sp
    li t0, 1
    beq a0, t0, terminar
    mv t0, a0
    andi t0, t0, 1
    bne t0, zero, esImpar
    li t0, 2
    div a0, a0, t0
    continuar:
    addi t1, t1, 1
    j f
    
esImpar:
    li t0, 3
    mul a0, t0, a0
    addi a0, a0, 1
    j continuar
terminar:
    mv a0, t1
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
