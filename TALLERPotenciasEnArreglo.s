#Potencia de dos en arreglo
.data
arreglo:
    .byte 1,2,3,4,5,6,7,8,9,0
largo:
    .word 10
.text
main:
    la a0, arreglo
    la a1, largo
    lw a1, (0)a1
    jal ra PotenciasEnArreglo
fin:
    j fin
PotenciasEnArreglo:
    addi sp, sp, -16
    sw ra, (0)sp
    sw s1, (4)sp
    mv s1, a0
    for:
        li t0, 0 #Incrementro
        li t1, 0 #Contador
        loop:
            bge t0, a1, return
            add t2, s1, t0
            lb a0, (0)t2
            sb t0, (8)sp
            jal ra EsPotenciaDeDos
            lb t0, (8)sp
            add t1, t1, a0
            addi t0, t0, 1
            j loop
        return:
            mv a0, t1
            lw ra, (0)sp
            lw s1, (4)sp
            addi sp, sp, 16
            jr ra
            
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
