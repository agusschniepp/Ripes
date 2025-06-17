#Funcion invertir
li a0, 0
jal ra inv
fin: j fin

inv:
    addi sp, sp, -16
    sw ra, (0)sp
    xori a0, a0, -1
    addi a0, a0, 1
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
