#Fibonacci_n x si x < n; sum de f(x-i) con i de [1,n]
li a0, 6 #x 
li a1, 3 #n

jal ra fib_n
fin:
    j fin
fib_n:
    addi sp, sp, -16
    sw ra, (0)sp
    sw s2, (4)sp
    sw s3, (8)sp
    
    blt a0, a1, casoBase
    
    li s2, 1
    li s3,0
    loop:
        blt a1, s2, terminar
        sw a0, (12)sp
        sub a0, a0, s2
        jal ra fib_n
        add s3, s3, a0
        addi s2, s2, 1
        lw a0, (12)sp
        j loop
    
terminar:
    mv a0, s3
    lw ra, (0)sp
    lw s2, (4)sp
    lw s3, (8)sp
    addi sp, sp, 16
    jr ra

casoBase:
    addi a0, a0, 0
    lw ra, (0)sp
    addi sp, sp, 16
    jr ra
