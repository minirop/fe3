#!/usr/bin/env python

import fe

rom = fe.rom()

# i = 0x40060
# i = 0x40C25
# i = 0x40CFB
i = 0x48177
while True:
	# no more chapters
	if rom[i] == 0xFF:
		break

	# print ("; ${:X}\n".format(i))
	print ("L{:X}:".format(i + 0x850000))

	while True:
		# no more character in this chapter
		if rom[i] == 0xFF:
			break

		print (".db {} {} LEVEL_{:02} {}".format(fe.get_unit(rom[i]), fe.get_class(rom[i+1]), rom[i+2], fe.get_name(rom[i+3])))
		print (".db ${:02X} ${:02X} {} {}".format(rom[i+4], rom[i+5], fe.unknown(rom[i+6]), fe.get_portrait(rom[i+7])))
		print (".db {} {} {} {}".format(fe.get_item(rom[i+8]), fe.get_item(rom[i+9]), fe.get_item(rom[i+10]), fe.get_item(rom[i+11])))
		print (".db {} {} {} {}".format(fe.get_item(rom[i+12]), fe.get_item(rom[i+13]), fe.get_item(rom[i+14]), fe.get_item(rom[i+15])))
		print (".db {} {} {}\n".format(fe.get_ai(rom[i+16]), fe.get_ai(rom[i+17]), fe.get_ai(rom[i+18])))

		i += 19
	print (".db TERMINATOR\n") # no more characters
	i += 1

print (".db TERMINATOR") # no more chapters (sometimes)
