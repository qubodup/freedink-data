DESTDIR=
PREFIX=/usr/local
DATADIR=$(PREFIX)/share
releasedir=freedink-data-1.08.`date +%Y%m%d`

all:
	@echo "No default action"

install:
#	Copy game data

#	The final directory is '$PREFIX/share/dink/dink' ('dink'
#	twice), as there can be site-wide D-Mods such as
#	'$PREFIX/share/dink/island'
	install -d -m 755 $(DESTDIR)$(DATADIR)/dink

#	'-a' will preserve timestamps, which some distros prefer. It
#	will also preserve symlinks, which may be useful as there are
#	a few duplicate musics. Use a .zip archive for woe releases,
#	it will duplicate files but avoid creating empty files instead
#	of symlinks.
	cp -a dink $(DESTDIR)$(DATADIR)/dink/

#	Clean-up:
#	Git files:
	find $(DESTDIR)$(DATADIR)/dink/ -name ".gitignore" -print0 | xargs -0r rm
#	Backup files:
	find $(DESTDIR)$(DATADIR)/dink/ -name "*~" -print0 | xargs -0r rm
#	Savegames:
	find $(DESTDIR)$(DATADIR)/dink/ -name "save*.dat" -print0 | xargs -0r rm
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
