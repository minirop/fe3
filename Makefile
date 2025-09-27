AS=wla-65816
LD=wlalink
ROM=fe3

COBJ=game.obj

all: $(ROM).sfc

$(COBJ): src/main.s lists descriptions arena shop
	$(AS) -I src -I bin -I text/dialogues -I text/lists -I text/arena -I text/shop -x -v -o $@ $<

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

arena:
	fe3-text text/arena/L8E801E.txt compile dialogue text/arena/L8E801E.bin
	fe3-text text/arena/L8E804E.txt compile dialogue text/arena/L8E804E.bin
	fe3-text text/arena/L8E806D.txt compile dialogue text/arena/L8E806D.bin
	fe3-text text/arena/L8E80F9.txt compile dialogue text/arena/L8E80F9.bin
	fe3-text text/arena/L8E810F.txt compile dialogue text/arena/L8E810F.bin
	fe3-text text/arena/L8E813E.txt compile dialogue text/arena/L8E813E.bin
	fe3-text text/arena/L8E8164.txt compile dialogue text/arena/L8E8164.bin
	fe3-text text/arena/L8E8183.txt compile dialogue text/arena/L8E8183.bin
	fe3-text text/arena/L8E81A2.txt compile dialogue text/arena/L8E81A2.bin
	fe3-text text/arena/L8E81C0.txt compile dialogue text/arena/L8E81C0.bin

shop:
	fe3-text text/shop/L8E8293.txt compile dialogue text/shop/L8E8293.bin
	fe3-text text/shop/L8E82AC.txt compile dialogue text/shop/L8E82AC.bin
	fe3-text text/shop/L8E82B8.txt compile dialogue text/shop/L8E82B8.bin
	fe3-text text/shop/L8E82C5.txt compile dialogue text/shop/L8E82C5.bin
	fe3-text text/shop/L8E82D7.txt compile dialogue text/shop/L8E82D7.bin
	fe3-text text/shop/L8E82E7.txt compile dialogue text/shop/L8E82E7.bin
	fe3-text text/shop/L8E82F3.txt compile dialogue text/shop/L8E82F3.bin
	fe3-text text/shop/L8E8301.txt compile dialogue text/shop/L8E8301.bin
	fe3-text text/shop/L8E831F.txt compile dialogue text/shop/L8E831F.bin
	fe3-text text/shop/L8E8343.txt compile dialogue text/shop/L8E8343.bin
	fe3-text text/shop/L8E8355.txt compile dialogue text/shop/L8E8355.bin
	fe3-text text/shop/L8E8364.txt compile dialogue text/shop/L8E8364.bin
	fe3-text text/shop/L8E8374.txt compile dialogue text/shop/L8E8374.bin
	fe3-text text/shop/L8E838A.txt compile dialogue text/shop/L8E838A.bin
	fe3-text text/shop/L8E8395.txt compile dialogue text/shop/L8E8395.bin
	fe3-text text/shop/L8E83A6.txt compile dialogue text/shop/L8E83A6.bin
	fe3-text text/shop/L8E83B6.txt compile dialogue text/shop/L8E83B6.bin
	fe3-text text/shop/L8E83C9.txt compile dialogue text/shop/L8E83C9.bin
	fe3-text text/shop/L8E83DD.txt compile dialogue text/shop/L8E83DD.bin
	fe3-text text/shop/L8E8401.txt compile dialogue text/shop/L8E8401.bin
	fe3-text text/shop/L8E8422.txt compile dialogue text/shop/L8E8422.bin
	fe3-text text/shop/L8E843D.txt compile dialogue text/shop/L8E843D.bin
	fe3-text text/shop/L8E844E.txt compile dialogue text/shop/L8E844E.bin
	fe3-text text/shop/L8E8466.txt compile dialogue text/shop/L8E8466.bin
	fe3-text text/shop/L8E847D.txt compile dialogue text/shop/L8E847D.bin
	fe3-text text/shop/L8E848C.txt compile dialogue text/shop/L8E848C.bin
	fe3-text text/shop/L8E8498.txt compile dialogue text/shop/L8E8498.bin
	fe3-text text/shop/L8E84A9.txt compile dialogue text/shop/L8E84A9.bin
	fe3-text text/shop/L8E84B7.txt compile dialogue text/shop/L8E84B7.bin
	fe3-text text/shop/L8E84C3.txt compile dialogue text/shop/L8E84C3.bin
	fe3-text text/shop/L8E84D4.txt compile dialogue text/shop/L8E84D4.bin
	fe3-text text/shop/L8E84F2.txt compile dialogue text/shop/L8E84F2.bin
	fe3-text text/shop/L8E8517.txt compile dialogue text/shop/L8E8517.bin
	fe3-text text/shop/L8E852D.txt compile dialogue text/shop/L8E852D.bin
	fe3-text text/shop/L8E853E.txt compile dialogue text/shop/L8E853E.bin
	fe3-text text/shop/L8E854D.txt compile dialogue text/shop/L8E854D.bin
	fe3-text text/shop/L8E8564.txt compile dialogue text/shop/L8E8564.bin
	fe3-text text/shop/L8E8570.txt compile dialogue text/shop/L8E8570.bin
	fe3-text text/shop/L8E8582.txt compile dialogue text/shop/L8E8582.bin
	fe3-text text/shop/L8E8595.txt compile dialogue text/shop/L8E8595.bin
	fe3-text text/shop/L8E85A9.txt compile dialogue text/shop/L8E85A9.bin
	fe3-text text/shop/L8E85BC.txt compile dialogue text/shop/L8E85BC.bin
	fe3-text text/shop/L8E85DF.txt compile dialogue text/shop/L8E85DF.bin
	fe3-text text/shop/L8E85FE.txt compile dialogue text/shop/L8E85FE.bin
	fe3-text text/shop/L8E8619.txt compile dialogue text/shop/L8E8619.bin
	fe3-text text/shop/L8E862C.txt compile dialogue text/shop/L8E862C.bin
	fe3-text text/shop/L8E8643.txt compile dialogue text/shop/L8E8643.bin

$(ROM).sfc: $(COBJ)
	$(LD) -d -v -S linkfile $(ROM).sfc
	@sha1sum -c checksum.sha1

clean:
	rm -f $(ROM).sfc $(COBJ)
