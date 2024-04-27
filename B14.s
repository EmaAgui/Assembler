#B.14 Basado en el ejercicio B.13, realice un programa 
#que imprima por consola el valor del
#número en orden inverso 
#(ej: 127 se imprime como 721). Luego considerando que 
#los strings terminan con un carácter nulo (0x00) 
#diseñe un programa que almacene el string 
#“YVAN EHT NIOJ” y lo muestre por consola en orden
# inverso buscando primero la ubicación del caracter
#nulo y recorriendo en sentido inverso el string.

.data 
    palabra: .string "YVAN EHT NIOJ"
    finPalabra: 
.text
    la x4, palabra
    la x5, finPalabra
loop:
    lb x6, 0(x5)
    add a0, x0, x6
    addi a7,x0, 11
    ecall
    addi x5, x5, -1
    ble x4, x5, loop
    
    