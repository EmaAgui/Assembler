#B.25 Modifique el programa B.21 para que utilice la subrutina de B.23. Tenga en cuenta
#recorrer el vector copiando el valor de cada elemento al registro a1,
#el valor máximo actual en a0, y la subrutina dejará en a0 el valor del máximo 
#entre esos dos elementos. Luego es cuestión de ir cargando en a1 
#el valor del elemento actual del vector hasta llegar al final.


.data
    vector: .word 10555,20,40,365,400,65536,1,0
.text
    la x4, vector #cargo la dir del vec
    lw a0, 0, x4 #cargo el contenido en a0
    jal x1, max #llamo a la funcion max
    
    addi a7, x0, 1 #imprimo el max
    ecall
    
    addi a7, x0, 10 #return 0
    ecall
    
max:
    addi x4, x4, 4 #sig
    lw a1, 0, x4 #cargo en a1 el sig
    beqz a1, salir #por si el sig es 0 salgo
    bgt a0, a1, max #a0 es mayor
    
may:
    #incremento a a1
    add a0, x0, a1
    bnez a1, max #si no es cero sigo con max
salir:
    ret #salgo de la funcion