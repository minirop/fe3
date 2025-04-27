AS=wla-65816
LD=wlalink
ROM=fe3

COBJ=game.obj

all: $(ROM).sfc

$(COBJ): src/main.s lists
	$(AS) -I src -I bin -I text/dialogues -I text/lists -x -v -o $@ $<

lists:
	fe3-text text/lists/chapters.txt compile list text/lists/chapters.bin
	fe3-text text/lists/characters.txt compile list text/lists/characters.bin
	fe3-text text/lists/classes.txt compile list text/lists/classes.bin
	fe3-text text/lists/weapons.txt compile list text/lists/weapons.bin

$(ROM).sfc: $(COBJ)
	$(LD) -d -v -S linkfile $(ROM).sfc
	@sha1sum -c checksum.sha1

clean:
	rm -f $(ROM).sfc $(COBJ)
