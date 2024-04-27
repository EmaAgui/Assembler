#B.27 Escriba una subrutina llamada Swap. La misma va a recibir en a0 la dirección de un dato
#(número signado) y en a1 la dirección de otro dato (número signado). La subrutina debe
#intercambiar el contenido de ambos. Ej: Si a0=0x10000000 , quiere decir que en la dirección
#de memoria 0x1000000 existe un dato (supongamos -10). Luego si a1=0x10000004, quiere
#decir que en 0x10000004 existe otro dato (supongamos 5). Si se llama a la subrutina con esas
#referencias a memoria la misma debe retornar habiendo guardado 5 en 0x10000000 y -10 en
#0x10000004.


.data
    num1: .word 6
    num2: .word 8
    
.text
    #cargo las direcciones
    la a0, num1
    la a1, num2
    
    la x23, num2
    lw x23, 0, x23
    
    jal x1, swap
    
    la x23, num2
    lw x23, 0, x23
    addi a7, x0, 10
    ecall
    
swap:
    lw a5, 0(a0) # guardo el literar de a0 en a5
    lw a6, 0(a1) # guardo el literal de a1 en a6
    
    sw a5, 0(a1) # pongo valor de a5 en a1
    sw a6, 0(a0) # pongo valor de a6 en a0
    
    ret
    
    