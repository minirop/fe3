#!/usr/bin/env python

import glob, os

counter = 0

for file in glob.glob("../src/*.asm"):
	with open(file) as f:
		for line in f.readlines():
			if line.startswith(".db "):
				counter += line.count('$')

fsize = os.path.getsize("../fe3.sfc")
progress = 100 * (fsize - counter) / fsize
print("%d/%d: %.2f%%" % (counter, fsize, progress))
