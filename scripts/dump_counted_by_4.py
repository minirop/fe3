#!/usr/bin/env python

import fe

rom = fe.rom()

start = fe.cpu_to_prg(0x95ACCA)
end = fe.cpu_to_prg(0x95B1DD)

while start < end:
    print ("\nL{:06X}:".format(fe.prg_to_cpu(start)))
    count = rom[start]
    print (f'.db {count}')
    start += 1
    for j in range(0, count):
        i = j * 4
        print (f'.db ${rom[start+i]:02X} ${rom[start+i+1]:02X} ${rom[start+i+2]:02X} ${rom[start+i+3]:02X}')
    start += count * 4
