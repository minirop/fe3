AS=wla-65816
LD=wlalink
ROM=fe3

COBJ=game.obj

all: $(ROM).sfc

$(COBJ): src/main.s lists
	$(AS) -I src -I bin -I text/dialogues -I text/lists -x -v -o $@ $<

lists:
	fe3-text text/lists/chapters.txt compile list text/lists/chapters.gen.asm
	fe3-text text/lists/characters.txt compile list text/lists/characters.gen.asm
	fe3-text text/lists/classes.txt compile list text/lists/classes.gen.asm
	fe3-text text/lists/items.txt compile list text/lists/items.gen.asm
	fe3-text text/lists/debug_objectives.txt compile list text/lists/debug_objectives.gen.asm
	fe3-text text/lists/teams.txt compile list text/lists/teams.gen.asm
	fe3-text text/lists/textboxes.txt compile list text/lists/textboxes.gen.asm
	fe3-text text/lists/messages.txt compile list text/lists/messages.gen.asm
	fe3-text text/lists/terrain_messages.txt compile list text/lists/terrain_messages.gen.asm
	fe3-text text/lists/the_door_opened.txt compile list text/lists/the_door_opened.gen.asm

$(ROM).sfc: $(COBJ)
	$(LD) -d -v -S linkfile $(ROM).sfc
	@sha1sum -c checksum.sha1

clean:
	rm -f $(ROM).sfc $(COBJ)
