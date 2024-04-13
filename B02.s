#B02 Escriba las instrucciones necesarias en Ripes 
#para lograr que el registro x5 tenga el
#valor hexadecimal 0x12345678

.text
    #lui x5,0x12345
     #load upper inmediate carga 32bits en un reg, solo los 20 mas significativos
    #addi x5, x5, 0x678 
    #addi soporta inmendiato de 12bits signados
    
    li x5, 0x12345678 
    
    #li(load inmediate) carga un valor inmediato al registro x5
    