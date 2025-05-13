#!/usr/bin/env python

import os

addresses = [0x88B410, 0x88B4B2, 0x88B554, 0x88B5F6, 0x88B698, 0x88B73A, 0x88B7DC, 0x88B87E, 0x88B920, 0x88B9C2, 0x88BA64, 0x88BB06, 0x88BBA8, 0x88BC4A, 0x88BCEC, 0x88BD8E, 0x88BE30, 0x88BED2, 0x88BF74, 0x88C016, 0x88C0B8, 0x88C15A, 0x88C1FC, 0x88C46C]

with open("../baserom.sfc", 'rb') as file:
	rom = bytearray(file.read())

for i in range(0, len(addresses) - 1):
	start = addresses[i] - 0x848000
	end = addresses[i+1] - 0x848000

	blob = rom[start:end]
	print ("\n\nL{:X}:".format(addresses[i]), end = '')
	for (i, b) in enumerate(blob):
		if i % 8 == 0:
			print ("\n.db", end = '')

		print (" ${:02X}".format(b), end = '')
