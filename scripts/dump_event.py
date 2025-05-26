#!/usr/bin/env python

import fe, sys

rom = fe.rom()

addr = int(sys.argv[1], 0)
address = fe.cpu_to_prg(addr)
bank = (addr >> 16) & 0xFF

command_9_pointers = []

stop = False
while not stop:
	opcode = rom[address]
	address += 1

	match opcode:
		case 0x00:
			print("EV_STOP")
			stop = True
		case 1:
			print(f"EV_TURN_SCREEN_OFF_THEN_MOVE {rom[address]} {rom[address + 1]}")
			address += 2
		case 2:
			id = rom[address + 1] * 0x100 + rom[address]
			print(f"EV_DIALOGUE {id}")
			address += 2
		case 3:
			print(f"EV_MOVE_CAMERA {rom[address]} {rom[address + 1]} SPEED_{rom[address + 2]:02X}")
			address += 3
		case 4:
			print(f"EV_COMMAND_04 ${rom[address]:02X} ${rom[address + 1]:02X} ${rom[address + 2]:02X}")
			address += 3
		case 5:
			print(f"EV_COMMAND_05 ${rom[address]:02X}")
			address += 1
		case 7:
			print(f"EV_COMMAND_07 {rom[address]} {rom[address + 1]}")
			address += 2
		case 8:
			unk1 = rom[address]
			unk2 = rom[address+1]
			address += 2
			if unk1 == 0xFF and unk2 == 0xFF:
				print("EV_RESTORE_MUSIC_FIELD")
			else:
				print(f"EV_CHANGE_MUSIC ${unk1:02X} ${unk2:02X}")
		case 9:
			addr1 = rom[address] + rom[address+1] * 0x100
			address += 2
			addr2 = rom[address] + rom[address+1] * 0x100
			address += 2
			addr3 = rom[address] + rom[address+1] * 0x100
			address += 2
			addr4 = rom[address] + rom[address+1] * 0x100
			address += 2
			print(f"EV_COMMAND_09 L{bank:X}{addr1:04X} L{bank:X}{addr2:04X} L{bank:X}{addr3:04X} L{bank:X}{addr4:04X}")
			command_9_pointers.append(addr1)
			command_9_pointers.append(addr2)
			command_9_pointers.append(addr3)
			command_9_pointers.append(addr4)
		case 0x0A:
			print(f"EV_COMMAND_0A {rom[address]}")
			address += 1
		case 0x0B:
			print(f"EV_DEL_UNIT {fe.get_unit(rom[address])}")
			address += 1
		case 0x0C:
			print("EV_SET_UNIT_", end='')
			match rom[address]:
				case 0:
					print("ALLY", end='')
				case 1:
					print("ENEMY", end='')
				case _:
					raise ValueError("EV_SET_UNIT")
			print(f" {fe.get_unit(rom[address+1])}")
			address += 2
		case 0x0D:
			print(f"EV_SET_ALLY {fe.get_unit(rom[address])} {fe.get_unit(rom[address+1])}")
			address += 2
		case 0x0F:
			print(f"EV_COMMAND_0F {rom[address]} {rom[address+1]}")
			address += 2
		case 0x10:
			raise NotImplementedError("EV_SHOP")
		case 0x11:
			flag = rom[address] + rom[address+1] * 0x100
			address += 2
			print(f"EV_SET_FLAG {flag}")
		case 0x12:
			flag = rom[address] + rom[address+1] * 0x100
			address += 2
			print(f"EV_UNSET_FLAG {flag}")
		case 0x18:
			print(f"EV_COMMAND_18 ${rom[address]:02X} ${rom[address+1]:02X} ${rom[address+2]:02X} ${rom[address+3]:02X} ${rom[address+4]:02X}")
			address += 5
		case 0x1A:
			raise NotImplementedError(f"${opcode:X}")
		case 0x1B:
			print(f"EV_COMMAND_1B ${rom[address]:02X} ${rom[address+1]:02X}")
			address += 2
		case 0x1C:
			print(f"EV_COMMAND_1C ${rom[address]:02X} ${rom[address + 1]:02X} ${rom[address + 2]:02X}")
			address += 3
		case 0x21:
			print(f"EV_COMMAND_21 ${rom[address]:02X} ${rom[address+1]:02X} ${rom[address+2]:02X} ${rom[address+3]:02X} ${rom[address+4]:02X}")
			address += 5
		case 0x25:
			print(f"EV_COMMAND_25 ${rom[address]:02X}")
			address += 1
		case 0x2E:
			print(f"EV_COMMAND_2E ${rom[address]:02X}")
			address += 1
			# print(f"EV_COMMAND_2E ${rom[address]:02X} ${rom[address + 1]:02X} ${rom[address + 2]:02X} ${rom[address + 3]:02X}")
			# address += 4
		case 0x30:
			id = rom[address] + rom[address+1] * 0x100
			address += 2
			print(f"EV_SOUND_EFFECT_30 {id}")
		case _:
			raise NotImplementedError(f"${opcode:X}")

command_9_pointers.append(0x8000)
command_9_pointers = list(set(command_9_pointers) ^ set([0x8000]))
command_9_pointers.sort()

for addr in command_9_pointers:
	if fe.prg_to_cpu(address) & 0xFFFF != addr:
		raise ValueError(f"{fe.prg_to_cpu(address):06X} vs {addr:04X}")

	print(f"L{fe.prg_to_cpu(address):06X}:\n.db", end='')

	match rom[address]:
		case 0x00:
			print(f" $00 {fe.get_unit(rom[address+1])}", end='')
		case 0x01:
			print(f" $01 ${rom[address+1]:02X}", end='')
		case _:
			raise ValueError("Invalid script startin byte")
	address += 2

	stop = False
	while not stop:
		opcode = rom[address]
		address += 1

		match opcode:
			case 1 | 3 | 4 | 5:
				print(f" MOV_METHOD_{opcode:02X} ${rom[address]:02X}", end='')
			case 2:
				print(f" MOV_DIR_CHANGE ", end='')
				match rom[address]:
					case 0: print("MOV_RIGHT", end='')
					case 1: print("MOV_LEFT", end='')
					case 2: print("MOV_UP", end='')
					case 3: print("MOV_DOWN", end='')
					case _: raise ValueError()
			case 0xFF:
				if rom[address] == 0xFF:
					stop = True
					print(" MOV_END")
				else:
					print(f" ${opcode:02X} ${rom[address]:02X}", end='')
			case _:
				raise ValueError(f"{opcode:02X}")

		address += 1

print(f"\nL{fe.prg_to_cpu(address):06X}:", end='')
