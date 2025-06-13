#Division (x/y) x,y Enteros (Utilizar convencion de llamada estandar)
.text
main:
    li a0, -192658
    li a1, 8999
    jal ra, div
fin: j fin
div:
    addi sp, sp, -12
    sw ra, (0)sp 
    
    #Tomo valor absoluto
    sw a0, (4)sp
    sw a1, (8)sp
    mv t3, a0
    mv t4, a1
    mv a0, t4
    jal ra inv
    mv a1, a0
    mv a0, t3
    jal ra inv
    
    li t0, 0 #Iterador
    
    loop:
        blt a0, a1, terminar
        sub a0, a0, a1
        addi t0, t0, 1
        j loop
    terminar:
        lw a0, (4)sp
        lw a1, (8)sp
        lw ra, (0)sp
        addi sp, sp, 12
        mv t2, t0
        
        #Intancia de chequeo de signo
        
        slt t0, a0, zero
        slt t1, a1, zero
        bne t0, t1 negativo
        add a0, zero, t2
        jr ra #positivo
        negativo:
        add a0, zero, t2
        li t5, 0xFFFFFFFF
        xor a0, a0, t5
        addi a0, a0, 1
        jr ra

inv:
    addi sp, sp, -8
    sw ra, (0)sp
    blt a0, zero, invertir
    j final
    invertir:
    li t0, 0xFFFFFFFF
    mv t1, a0
    xor t1, t0, t1
    addi t1, t1, 1
    mv a0, t1
    final:
    lw ra, (0)sp
    addi sp, sp, 8
    jr ra