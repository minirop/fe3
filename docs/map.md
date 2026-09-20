# Map

Not everything is understood/known. Here's what we have for now:

- MAP_DATA contains the meta-tilemaps followed by as many unknown bytes
- META_TILES contains the metatiles (1 per tileset)
- Metatiles are 4x1 or 8x1
- Metatilemap indices are 16-b and are multiplied by 8 to get the metatile offset (not sure why, they seem to be 4x1)
- Units are loaded from CHAPTERS_UNITS and CHAPTERS_REINFORCEMENT_ENEMY_UNITS (badly named)
- CHAPTERS_UNITS seems to be static units
- CHAPTERS_REINFORCEMENT_ENEMY_UNITS seems to be moving units
- Castor in is both, unknown why
- Cutscenes/events are in TABLE_8C8004 and L8B91F7
- TABLE_8C8004 is the dialogues
- L8B91F7 is composed almost exclusively of EV_DEL_UNIT scripts

## Legacy map editor documentation

A Japanese FE3 Map Editor ver. 0.65, dated 2008-02-01, documents
additional map details. Its README describes the tool as probably for
version 1.0 and for a headered ROM. The notes below are transcribed from
the tool bundle's `Read Me.txt` and `HeadAd.txt`.

The `MAP PROPATY` section describes a map property entry in this order:

1. CHIP SET
2. palette
3. width
4. height
5. unit chip
6. same as the item to the left
7. same as the item to the left
8. indoor/outdoor indicator

The original Japanese labels are `CHIP SET、パレット、横幅、縦幅、ユニットチップ、同左、同左、場内判定`.

The accompanying `HeadAd.txt` lists these PC offsets for the same legacy
ROM format:

| Data | PC offset |
| --- | ---: |
| Map header (`マップヘッダ`) | `0x4CCB1` |
| Map properties (`マップ情報`) | `0x50200` |
| Map data (`マップデータ`) | `0x120200` |
| Chapter-to-map table (`マップの章`) | `0x20E15` |
| Starting unit data/header (`出撃ユニット`) | `0x4C65C` |
| Enemy unit header 1 (`敵データヘッダ1`) | `0x40200` |
| Enemy unit header 2 (`敵データヘッダ2`) | `0x48200` |

These field descriptions and offsets come from legacy hacking
documentation. They still need to be correlated with the labels and
structures used by this disassembly.
