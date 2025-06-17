#Es potencia de Dos
li a0, 3
jal ra EsPotenciaDeDos
fin: j fin

EsPotenciaDeDos:
    addi sp, sp, -16
    sw ra, (0)sp
    beq a0, zero, terminar
    li t0, 1
    sub t0, a0, t0 #(n - 1)
    and a0, t0, a0 # n and (n - 1)
    beq a0, zero, return1 # n and (n - 1) == 0 es potencia 
    addi a0, zero, 0
    j terminar
    return1:
        addi a0, zero, 1
    terminar:
        lw ra, (0)sp
        addi sp, sp, 16
        jr ra
