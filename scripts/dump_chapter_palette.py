#!/usr/bin/env python

import fe

rom = fe.rom()

address = 0x258100
size = 0x20
palette = rom[address:address+0x200]

# this is what the game does in subroutine $838851

palette[size*5:size*8] = rom[0xAF800:0xAF800 + size*3]
palette[size*0:size*1] = rom[0xA5080:0xA5080 + size]
palette[size*12:size*13] = palette[size*5:size*6]
palette[size*14:size*15] = palette[size*6:size*7]
palette[size*13:size*14] = palette[size*7:size*8]
palette[size*12+30:size*12+32] = palette[6:8]
palette[size*13+30:size*13+32] = palette[6:8]
palette[size*14+30:size*14+32] = palette[6:8]
palette[size*8:size*9] = rom[0xA5000:0xA5000 + size]
palette[size*11:size*12] = rom[0xA5020:0xA5020 + size]
palette[size*15:size*16] = rom[0xA5060:0xA5060 + size]

for (i, b) in enumerate(palette):
	if i % 16 == 0:
		print ("")

	print ("{:02X} ".format(b), end = '')
