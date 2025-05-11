#!/usr/bin/env python

import os

with open("../baserom.sfc", 'rb') as file:
	rom = bytearray(file.read())

for i in range(0, 23):
	offset = 0x50261 + i * 0x400
	os.system("dd if=../baserom.sfc of=../maps/header{:02}.bin skip={} count={} iflag=skip_bytes,count_bytes".format(i, offset, 0x400))
