lw   x20, g
lw   x21, h
lw   x22, i
lw   x23, j
add  x19, x0, x0
bne  x22, x23, else
add  x19, x20, x21
jal  x0, fim
else:
sub  x19, x20, x21
fim:
sw   x19, f
halt

//valores meramente ilustrativos:

g: .word 15
h: .word 20
i: .word 5
j: .word 5
f: .word 0
