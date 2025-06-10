#Mayor en R2
main:
    li a0, 4 # x1
    li a1, 6 # y1
    li a2, 8 # x2
    li a3, 9 # y2
    jal ra mayor
fin:
    j fin
mayor:

    blt a0, a2 y
    y: blt a1, a3 return
    
    blt a2, a0 yy
    yy: blt a3, a1 return2
    
    addi a0, zero, 0
    jr ra
    
    return2:
        addi a0, zero, 1
        jr ra

    return: 
        addi a0, zero, -1
        jr ra    
    