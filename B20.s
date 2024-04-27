#B.20
#Dado un vector con valores enteros signados, 
#escriba un programa que encuentre cuál es
#el valor mínimo almacenado y lo informe por consola. 
#El vector posee N elementos, pero se
#sabe que el último elemento del mismo siempre es 0. 
#Una vez completado el programa modifique los valores del 
#vector con distintos casos de prueba.

.data
    vector: .word -500,-20,40,-365,-400,65536,1,-455
.text
    la x5, vector
    lw x6, 0, x5
    
loop:
    lw x7, 0, x5
    blt x6, x7, nomin
    add x6, x7, x0
nomin:
    addi x5, x5, 4
    bnez x7, loop
    
    li a7, 1
    add a0, x6, x0
    ecall
    