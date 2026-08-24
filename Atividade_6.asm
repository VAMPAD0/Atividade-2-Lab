addi x10, x0, 1
addi x7,  x0, 32

acende:
sb   x10, 1029(x0)
beq  x10, x7, fim

espera_apertar:
lb   x11, 1026(x0)
andi x11, x11, 0x1
beq  x11, x0, espera_apertar

espera_soltar:
lb   x11, 1026(x0)
andi x11, x11, 0x1
bne  x11, x0, espera_soltar

slli x10, x10, 1
jal  x0, acende

fim:
halt
