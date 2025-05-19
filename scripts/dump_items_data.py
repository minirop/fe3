#!/usr/bin/env python

import fe

ITEMS = fe.get_items()

rom = fe.rom()

for (id, name) in enumerate(ITEMS):
	i = 0x426e9 + id * 14

	print ("; {:06X} // {:06X}".format(i, i + 0x848000))
	print (".db {} {} LEVEL_{:02}".format(fe.get_type(rom[i]), rom[i+1], rom[i+2]))
	print (".db {} {} {}".format(rom[i+3], rom[i+4], rom[i+5]))
	if rom[i+7] != 0xFF:
		raise ValueError("separator is not $FF")
	print (".db {} UNDEFINED {}".format(rom[i+6], rom[i+8]))
	cost = rom[i+9] + rom[i+10] * 0x100
	print ("COST({})".format(cost * 10))
	if rom[i+12] != id or id != rom[i+13]:
		raise ValueError("item has not the correct name")
	print (".db {} {} {}\n".format(fe.get_range(rom[i+11]), name, name))
