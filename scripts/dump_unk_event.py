#!/usr/bin/env python

import fe

rom = fe.rom()

address = fe.cpu_to_prg(0x8CA179)
end = fe.cpu_to_prg(0x8CA3E9)
bank = 0x8C

while address < end:
	v1 = rom[address]
	v2 = rom[address+1]
	v3 = rom[address+2]
	v4 = rom[address+3]
	v5 = rom[address+4]
	v6 = rom[address+5]

	if v1 == 0xFF:
		address += 2
		print(".db $FF $FF")
		print(f"\nL{fe.prg_to_cpu(address):06X}:")
	else:
		address += 6
		print(f".db ${v1:02X} ${v2:02X} ${v3:02X}")
		print(f".dl L{v6:02X}{v5:02X}{v4:02X}")
