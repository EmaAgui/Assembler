#B.13
.data
    numero: .string "127"
.text
    la x5,numero
    lb x6,0(x5)
    lb x7,1(x5)
    lb x8,2(x5)
    
    add a0, x0, x6
    addi a7, x0, 1
    ecall
    
    add a0, x0, x7
    addi a7, x0, 1
    ecall
    
    add a0, x0, x8
    addi a7, x0, 1
    ecall