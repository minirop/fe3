# Map

Not everything is understood/known. Here's what we have for now:

- MAP_DATA contains the meta-tilemaps followed by as many unknown bytes
- SOME_POINTERS_TABLE contains the metatiles
- Metatiles are 4x1 or 8x1
- Metatilemap indices are 16-b and are multiplied by 8 to get the metatile offset (not sure why, they seem to be 4x1)
- Some characters are loaded from CHAPTERS_UNITS and CHAPTERS_REINFORCEMENT_ENEMY_UNITS (badly named)
- CHAPTERS_UNITS seems to be static characters
- CHAPTERS_REINFORCEMENT_ENEMY_UNITS seems to be moving characters
- Castor in is both, unknown why
- Cutscenes/events are in TABLE_8C8004 and L8B91F7
