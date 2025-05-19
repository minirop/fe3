#!/usr/bin/env python

import fe

rom = fe.rom()

for i in range(0x9D215, 0x9D29C):
	if (i - 0x9D215) % 3 == 0:
		print ("\n.db", end = '')

	print (" {}".format(fe.get_item(rom[i])), end = '')
