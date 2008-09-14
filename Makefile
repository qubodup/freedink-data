DESTDIR=
PREFIX=/usr/local
DATADIR=$(PREFIX)/share
releasedir=freedink-data-1.08.`date +%Y%m%d`

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

# Do this from a fresh Git checkout to avoid packaging temporary files
release:
	mkdir $(releasedir)
	cp -a *.txt *.spec Makefile dink/ doc/ licenses/ src/ $(releasedir)

	find $(releasedir) -name ".gitignore" -print0 | xargs -0r rm
	find $(releasedir) -name "*~" -print0 | xargs -0r rm
	find $(releasedir) -name "save*.dat" -print0 | xargs -0r rm
	rm -f $(releasedir)/dink/Story/key-67.c

	tar czf $(releasedir).tar.gz $(releasedir)
	rm -rf $(releasedir)
