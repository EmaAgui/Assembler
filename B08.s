#B.08 Dadas las siguientes instrucciones en Ripes,
#indique qué valor se muestra en la salida“Console” 
#luego de ejecutar las instrucciones.
#Relacione estos valores con la tabla ASCII. Indique qué 
#modificaciones debe hacer a las instrucciones para 
#lograr que imprima “5678”

    addi a0,x0,0x30     #cargo a a0 30 en hexa
    addi a7,x0,11
    ecall               #imprimo un caracter 0
    
    addi a0,x0,0x31
    addi a7,x0,11
    ecall # 1
    
    addi a0,x0,0x32
    addi a7,x0,11
    ecall #2
    
    addi a0,x0,0x33
    addi a7,x0,11
    ecall #3
    
    addi a0,x0,0x34
    addi a7,x0,11
    ecall #4