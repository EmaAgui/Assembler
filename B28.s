#B.28 Dado un vector de 10 elementos:

#Escriba una subrutina llamada PrintVector, la cual reciba en a0 la dirección de comienzo del
#vector y en a1 la cantidad de elementos del mismo. Imprima por consola los elementos del
#vector separados por coma (ej: 100, -20, 40, -365, 400, 65536, 1, 0, 3, -10 ).


.data
    vector: .word 100,-20,40,-365,400,65536,1,0,3,-10
    espacio: .string ", "
    
.text
    la x4, vector #cargo la dir del vec
    li a1, 10 #cargo la cant de elementos del vec como inmediato
    jal x1, imprimirVector #llamo a la funcion imprimir vec
    
    #return 0
    li a7, 10 
    ecall  
    
imprimirVector:
    lw a0, 0, x4  #cargo el contenido del vector
    
    addi a7, x0,1 # muestro por pantalla
    ecall
    
    la a0, espacio # muestro el espacio
    addi a7, x0, 4
    ecall
    
    addi x4, x4, 4 #incremesto la posicion del vector
            
    addi a1, a1, -1 #resto 1 a la cantidad de elementos del vector = condicion de fin
    bnez a1, imprimirVector # si cantElem es 0 salgo
        
    ret
    
    
    
    
    