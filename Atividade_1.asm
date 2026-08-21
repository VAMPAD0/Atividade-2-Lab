lw   x10, a          
lw   x11, b          
add  x12, x10, x0    
bge  x11, x12, fim   
add  x12, x10, x11   
fim:
sw   x12, m
halt

a: .word 14
b: .word 7
m: .word 0


#valores de m quando o a e o b forem:
#a = 06 || b = 15 -> m = 6
#a = 14 || b = 07 -> m = 15
#a = 25 || b = 12 -> m = 25
