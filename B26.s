#B.26 Escriba una subrutina llamada MaxDir. La misma va a recibir en a0 la dirección de un
#dato (número signado) y en a1 la dirección de otro dato (número signado). La subrutina debe
#retornar en a0 el valor 1 si el dato almacenado en la dirección de memoria apuntada por a0 es
#mayor que el dato almacenado en la dirección de memoria apuntada por a1.


.data
    num1: .word 9
    num2: .word 8

.text
    #cargo las direcciones
    la a0, num1 
    la a1, num2
    
    #llamo a la funcion maxDir
    jal x1, maxDir
    
    #en imprimo la dir max
    addi a7, x0, 1
    ecall
    
    #return 0
    addi a7, x0, 10
    ecall
    
    
maxDir:
    lw a2, 0, a0
    lw a3, 0 , a1
    bgt a2, a3, salir # a0 > a1
    add a0, x0, a1
salir:
    ret
    