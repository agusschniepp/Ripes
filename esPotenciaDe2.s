li a0, 0b10000000000000000100000000000000 
jal ra potencia 
finish: j finish 
potencia:     
li t3, 1     
li t6, 32     
li t0, 0     
loop:         
beq t0, t6, fin         
andi t1, a0, 1         
beq t1, t3, savet4         
continuar:         
srai a0, a0, 1         
addi t0, t0, 1         
j loop          
savet4:     
beq t4, t1, terminar     
mv t4, t1     
j continuar      
fin:     
addi a0, zero, 1     
jr ra 
terminar:     
addi, a0, zero, 0     
jr ra