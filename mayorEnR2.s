#Mayor en R2
main:
    li a0, 9 # x1
    li a1, 6 # y1
    li a2, 7 # x2
    li a3, 6 # y2
    jal ra mayor
fin:
    j fin
mayor:
    beq a0, a2, return0 # 0 si no
    beq a1, a3, return0 # 0 si no
    slt t0, a0, a2 #a0 < a2? (1:0)
    slt t1, a1, a3 #a1 < a3? (1:0)
    #t0 = t1
    beq t0, t1, terminar
    return0:
    addi a0, zero, 0 #t0 != t1 return 0
    jr ra
    terminar:
        bne t0, zero, returnNegativo
        addi a0, zero, 1 #t0 = 0 => return 1
        jr ra
    returnNegativo:
        addi a0, zero, -1 #t0 = 1 => return -1
        jr ra
        
        
        
    
    
    
    