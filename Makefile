DESTDIR=
PREFIX=/usr/local
DATADIR=$(PREFIX)/share

all:
	@echo "No default action"

install:
#	Copy game data and copyright files
	install -d -m 755 $(DESTDIR)$(DATADIR)/dink
	cp -r dink $(DESTDIR)$(DATADIR)/dink/
	cp README.txt README-REPLACEMENTS.txt $(DESTDIR)$(DATADIR)/dink/

#	Clean-up:
#	Git files:
	find $(DESTDIR)$(DATADIR) -name ".gitignore" -print0 | xargs -0r rm
#	Backup files:
	find $(DESTDIR)$(DATADIR) -name "*~" -print0 | xargs -0r rm
#	Savegames:
	find $(DESTDIR)$(DATADIR) -name "save*.dat" -print0 | xargs -0r rm
#	Cheat^wDebugging tool
	rm -f $(DESTDIR)$(DATADIR)/dink/dink/Story/key-67.c

#	Tidy permissions
	find $(DESTDIR)$(DATADIR) -type d -print0 | xargs -0r chmod 755
	find $(DESTDIR)$(DATADIR) -type f -print0 | xargs -0r chmod 644
