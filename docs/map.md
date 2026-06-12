# Map

Not everything is understood/known. Here's what we have for now:

- Metatiles seems to be 4x1 or 8x1
- Map "files" (like 12055D.bin) are compressed
- 12055D.bin first 0x3C0 bytes contains the metatilemap for chapter 1
- 115F9F.bin contains the metatiles
- Metatilemap indices are 16-b and are multiplied by 8 to get the metatile offset (not sure why they seem to be 4x1)
- Some characters are loaded from CHAPTERS_UNITS and CHAPTERS_REINFORCEMENT_ENEMY_UNITS (badly named)
- Cutscenes/events are in TABLE_8C8004 and L8B91F7
