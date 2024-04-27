#B.21 Encontrar mayor


.data
    vector: .word -500,-20,40,-365,-400,65536,1,-455
.text
    la x5, vector
    lw x6, 0, x5
    
loop:
    lw x7, 0, x5
    blt x7, x6, nomin
    add x6, x7, x0
nomin:
    addi x5, x5, 4
    bnez x7, loop
    
    li a7, 1
    add a0, x6, x0
    ecall
    