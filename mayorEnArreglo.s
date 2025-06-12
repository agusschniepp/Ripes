.data
array: 
    .word 1,2,3,4,5,6,7,8,9,20,10,5,0,60,30,77,20,100
.text
main:
    la t0, array
    li s0, 17
    for:
        mv t6, t0
        li t1, 0 #Iterador
        li t2, 0 #Incrementro
        li t3, 0 #Mayor
        loop:
            slli t4, t2, 2 #t4= t1*4
            
            add t0, t6, t4
            lw t5, (0)t0
            blt t3, t5, mayor
        continuarLoop:
            beq t1, s0, fin 
            addi t2, t2, 1
            addi t1, t1, 1
            j loop
        mayor:
            mv t3, t5
            j continuarLoop
    fin: j fin