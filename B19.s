#B.19 Dado un vector con valores enteros signados, 
#escriba un programa que encuentre cuál es
#el valor mínimo almacenado y lo informe 
#por consola. El vector posee 10 elementos. Una vez
#completado el programa modifique los valores 
#del vector con distintos casos de prueba.
.data
    vector: .word 100,-20,40,-365,400,65536,1,0,3,-10
    finVec: 
.text
    la x4, vector #puntero vec
    la x5, finVec #puntero finvec
    
    lw x6, 0, x4 #cargo en x6 el contenido del vector
    
loop:
    lw x7, 0, x4 #cargo x7 con el contenido del vector
    blt x6, x7, nomin #salta si x6 > x7 cambiar el orden para max
    add x6, x7, x0 # en x6 = x7
nomin:
    addi x4, x4, 4 #avanzo el vector
    bne x4, x5, loop
    
    li a7, 1
    add a0, x6, x0
    ecall