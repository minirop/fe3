AS=wla-65816
LD=wlalink
ROM=fe3

COBJ=game.obj

all: $(ROM).sfc

$(COBJ): src/main.s lists descriptions
	$(AS) -I src -I bin -I text/dialogues -I text/lists -x -v -o $@ $<

# need makefile magic to avoid having to list all files manually
lists:
	fe3-text text/lists/chapters.json compile list text/lists/chapters.gen.asm
	fe3-text text/lists/characters.json compile list text/lists/characters.gen.asm
	fe3-text text/lists/classes.json compile list text/lists/classes.gen.asm
	fe3-text text/lists/items.json compile list text/lists/items.gen.asm
	fe3-text text/lists/debug_objectives.json compile list text/lists/debug_objectives.gen.asm
	fe3-text text/lists/teams.json compile list text/lists/teams.gen.asm
	fe3-text text/lists/textboxes.json compile list text/lists/textboxes.gen.asm
	fe3-text text/lists/messages.json compile list text/lists/messages.gen.asm
	fe3-text text/lists/terrain_messages.json compile list text/lists/terrain_messages.gen.asm
	fe3-text text/lists/the_door_opened.json compile list text/lists/the_door_opened.gen.asm
	fe3-text text/lists/menu_unk.json compile list text/lists/menu_unk.gen.asm
	fe3-text text/lists/menu_ingame.json compile list text/lists/menu_ingame.gen.asm
	fe3-text text/lists/menu_inventory.json compile list text/lists/menu_inventory.gen.asm
	fe3-text text/lists/menu_actions.json compile list text/lists/menu_actions.gen.asm
	fe3-text text/lists/menu_items.json compile list text/lists/menu_items.gen.asm
	fe3-text text/lists/menu_unit_profile.json compile list text/lists/menu_unit_profile.gen.asm
	fe3-text text/lists/menu_convoy_errors.json compile list text/lists/menu_convoy_errors.gen.asm
	fe3-text text/lists/units_msg.json compile list text/lists/units_msg.gen.asm
	fe3-text text/lists/menu_unit_unk.json compile list text/lists/menu_unit_unk.gen.asm
	fe3-text text/lists/small_menus.json compile list text/lists/small_menus.gen.asm
	fe3-text text/lists/menu_settings.json compile list text/lists/menu_settings.gen.asm
	fe3-text text/lists/menu_battle_animations.json compile list text/lists/menu_battle_animations.gen.asm
	fe3-text text/lists/empty_menus.json compile list text/lists/empty_menus.gen.asm
	fe3-text text/lists/receive_deposit_throw_away.json compile list text/lists/receive_deposit_throw_away.gen.asm
	fe3-text text/lists/debug_strings.json compile list text/lists/debug_strings.gen.asm
	fe3-text text/lists/menu_preparation.json compile list text/lists/menu_preparation.gen.asm
	fe3-text text/lists/knight_names.json compile list text/lists/knight_names.gen.asm
	fe3-text text/lists/actions_messages.json compile list text/lists/actions_messages.gen.asm
	fe3-text text/lists/unk_names.json compile list text/lists/unk_names.gen.asm

descriptions:
	fe3-text text/descriptions/knight.txt compile dialogue text/descriptions/knight.bin
	fe3-text text/descriptions/thief.txt compile dialogue text/descriptions/thief.bin
	fe3-text text/descriptions/fighter.txt compile dialogue text/descriptions/fighter.bin
	fe3-text text/descriptions/hunter.txt compile dialogue text/descriptions/hunter.bin
	fe3-text text/descriptions/archer.txt compile dialogue text/descriptions/archer.bin
	fe3-text text/descriptions/sniper.txt compile dialogue text/descriptions/sniper.bin
	fe3-text text/descriptions/horseman.txt compile dialogue text/descriptions/horseman.bin
	fe3-text text/descriptions/cavalier.txt compile dialogue text/descriptions/cavalier.bin
	fe3-text text/descriptions/paladin.txt compile dialogue text/descriptions/paladin.bin
	fe3-text text/descriptions/pegasus_knight.txt compile dialogue text/descriptions/pegasus_knight.bin
	fe3-text text/descriptions/dracoknight.txt compile dialogue text/descriptions/dracoknight.bin
	fe3-text text/descriptions/manakete.txt compile dialogue text/descriptions/manakete.bin
	fe3-text text/descriptions/mercenary.txt compile dialogue text/descriptions/mercenary.bin
	fe3-text text/descriptions/freelancer.txt compile dialogue text/descriptions/freelancer.bin
	fe3-text text/descriptions/cleric.txt compile dialogue text/descriptions/cleric.bin
	fe3-text text/descriptions/mage.txt compile dialogue text/descriptions/mage.bin
	fe3-text text/descriptions/bishop.txt compile dialogue text/descriptions/bishop.bin
	fe3-text text/descriptions/hero.txt compile dialogue text/descriptions/hero.bin
	fe3-text text/descriptions/armour_knight.txt compile dialogue text/descriptions/armour_knight.bin
	fe3-text text/descriptions/lord.txt compile dialogue text/descriptions/lord.bin
	fe3-text text/descriptions/general.txt compile dialogue text/descriptions/general.bin
	fe3-text text/descriptions/dancer.txt compile dialogue text/descriptions/dancer.bin

$(ROM).sfc: $(COBJ)
	$(LD) -d -v -S linkfile $(ROM).sfc
	@sha1sum -c checksum.sha1

clean:
	rm -f $(ROM).sfc $(COBJ)
