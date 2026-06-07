#!/usr/bin/env python

import glob, os

banksize = 0x8000

# allow to ignore banks whose last unknown bytes
# are not really relevant ATM
ignored_banks = [0, 1, 18]

counter = 0
files = []
for file in glob.glob("../src/bank*.asm"):
	ignored = False
	for ib in ignored_banks:
		if file.endswith(f'bank{ib:03}.asm'):
			ignored = True
			break

	if ignored:
		continue

	with open(file) as f:
		local_counter = 0
		for line in f.readlines():
			if line.startswith(".db "):
				local_counter += line.count('$')
		counter += local_counter
		files.append((file[7:], local_counter))

files = sorted(files, key=lambda tup: tup[0])
for (name, count) in files:
	if count > 0:
		progress = 100 * count / banksize
		print(f"{name}: {banksize - count:>5}/{banksize} ({100 - progress:05.2f}%)")

fsize = os.path.getsize("../fe3.sfc")
progress = 100 * (fsize - counter) / fsize
print("%d/%d: %.2f%%" % (counter, fsize, progress))
