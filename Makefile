AS=wla-65816
LD=wlalink
ROM=fe3

COBJ=game.obj

all: $(ROM).sfc

$(COBJ): src/main.s
	$(AS) -I src -I bin -x -v -o $@ $<

$(ROM).sfc: $(COBJ)
	$(LD) -d -v -S linkfile $(ROM).sfc
	@sha1sum -c checksum.sha1

clean:
	rm -f $(ROM).sfc $(COBJ)
