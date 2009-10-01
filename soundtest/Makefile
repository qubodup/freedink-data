.PHONY: clean dist

clean:
	find -name "*~" -print0 | xargs -r0 rm

dist: clean
	dir=$$(basename $$(pwd)) && \
	(cd .. && rm -f $$dir.zip && zip -r $$dir.zip $$dir)
