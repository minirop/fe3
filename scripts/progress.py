#!/usr/bin/env python

import glob, os

counter = 0
files = []
for file in glob.glob("../src/bank*.asm"):
	with open(file) as f:
		local_counter = 0
		for line in f.readlines():
			if line.startswith(".db "):
				local_counter += line.count('$')
		counter += local_counter
		files.append((file[7:], local_counter))

files = sorted(files, key=lambda tup: tup[0])
for d in files:
	if d[1] > 0:
		print("%s: %d" % d)

fsize = os.path.getsize("../fe3.sfc")
progress = 100 * (fsize - counter) / fsize
print("%d/%d: %.2f%%" % (counter, fsize, progress))
