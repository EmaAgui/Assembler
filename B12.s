#B.12 Escriba el programa “ITOA.s” basado en los puntos anteriores pero ahora
# el número a convertir no es solamente el 1024 en x5 sino que puede tener 
#cualquier valor positivo en x5. Ejemplo: Si x5=0xBC614E , 
#entonces debe imprimir por consola el 12345678


.data 
    num: .word 0xBC614E
    vec: .word 0 0 0 0 0 0 0 0
    
.text
    la x4, num #cargo la dir de num en x4
    lw x4, 0, x4 #cargo el num literal en x4
    
    la x5, vec #puntero al vector
    lw x6, 0, x5 #en x6 guardp el primer elemento del vector 0
    
    addi a0, x0, 0 #contador para cociente
    add a1, x4, x0 #cargo el numero literal
    addi a2, x0, 10 #cargo el 10
    
    la a4, vec #cargo la dir del vec en a4
    la a5, vec #cargo la dir ini
     
    jal x1, itoa #llamo a itoa
    
    
    
    
itoa:
    addi a0, a0,1 #cociente
    sub a1, a1, a2 #le resto 10
    bgt a1, a2, itoa #salta si a1 > 10
    
    add a3, x0, a1 #en a3 pongo el resto
    lw a4, 0(a3) #a4 esta la dir del vec
    slli a4, a4, 2
    bgt a1, a2, itoa
    lw a4, 0, a1
    ret
    


    
    

    