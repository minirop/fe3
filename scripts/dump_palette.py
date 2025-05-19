#!/usr/bin/env python

import fe

rom = fe.rom()

address = 0xA5000
count = 7

for id in range(0, count):
	palette = rom[address:address+32]
	address += 32

	for i in range(0, 16):
		if i % 4 == 0:
			print ("\n.dw", end = '')

		colour = palette[i * 2] + palette[i * 2 + 1] * 256
		red = colour & 0x1F
		green = (colour >> 5) & 0x1F
		blue = (colour >> 10) & 0x1F
		print (" RGB({}, {}, {})".format(red*8, green*8, blue*8), end = '')
