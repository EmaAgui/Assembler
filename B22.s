#B.23 Escriba una subrutina llamada Max, la cual debe recibir en a0 y en a1
# (x10 y x11 respectivamente) dos números signados y devolver cual 
# de los dos es el mayor en a0.

.data
    num1: .word 10
    num2: .word 12

.text 
    la a0, num1
    la a1, num2
    
    lw a0, 0(a0)
    lw a1, 0(a1)   
    jal x1, MAX
    
    addi a7, x0,1
    ecall
    
    addi a7, x0, 10
    ecall

MAX:
    bgt a0, a1, salir
    add a0, a1, x0
salir:
    ret