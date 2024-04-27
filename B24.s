#B.24 Escriba una subrutina llamada MaxUnsigned, la cual debe recibir en a0 y en a1 
# x10 y x11
#respectivamente dos números sin signo y devolver cual de los dos es el mayor en a0.

.data
    num1: .word 1
    num2: .word 2
    
.text
    #cargo las direcciones de memorias de los num1 y ¿num2
    la a0, num1
    la a1, num2
    
    #accedo al contenido de las direcciones
    lw a0, 0, a0
    lw a1, 0, a1
    
    #llamo a la funcion max
    jal x1, MAX
    
    #imprimo el num max
    addi a7, x0, 1
    ecall
    
    #retutn 0
    addi a7, x0, 10
    ecall
    
MAX:
    bgtu  a0, a1, salir
    add a0, x0, a1
salir:
    jalr x0, x1, 0
    