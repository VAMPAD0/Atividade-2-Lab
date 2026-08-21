lw   x10, a
lw   x11, b
add  x12, x0, x0
bge  x11, x12, else
add  x12, x10, x11
jal  x0, fim
else:
sub  x12, x10, x11
fim:
sw   x12, m
halt

a: .word 6
b: .word 15
m: .word 0

#valores de m quando o a e o b forem:
#a = 06 || b = 15 || m = f7 (-9)
#a = 14 || b = 07 || m = 07
#a = 25 || b = 12 || m = 0d (13)
