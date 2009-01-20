#!/bin/bash
# Debian release

# Copyright (C) 2008  Sylvain Beucler

# This file is part of GNU FreeDink

# GNU FreeDink is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.

# GNU FreeDink is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see
# <http://www.gnu.org/licenses/>.

#freedink_tarball=$(ls -t /mnt/snapshots/freedink*.tar.gz | head -1)
#dfarc2_tarball=$(ls -t /mnt/snapshots/dfarc2*.tar.gz | head -1)
#for i in $freedink_tarball $dfarc2_tarball; do
#VERSION=1.08.20080731

PACKAGE=freedink-data
TARBALL=$(cd /mnt/snapshots && ls $PACKAGE-*.tar.gz | grep ^$PACKAGE-[0-9] | sort -n | tail -1)
VERSION=${TARBALL#$PACKAGE-}
VERSION=${VERSION%.tar.gz}
cp -a /mnt/snapshots/$TARBALL .
rm -rf t/
mkdir t
pushd t
tar xzf ../$PACKAGE-$VERSION.tar.gz
ln -s ../$PACKAGE-$VERSION.tar.gz ${PACKAGE}_$VERSION.orig.tar.gz 
cd $PACKAGE-$VERSION/
cp -a ../../$PACKAGE/debian .
yes | dch -D stable \
  --newversion $VERSION-1 \
  --force-bad-version -- \
  "New upstream release"
pdebuild --pbuilder cowbuilder --buildresult /mnt/snapshots/debian -- --basepath /var/cache/pbuilder/base-etch.cow --bindmounts /mnt/snapshots/debian/etch-backports --debian-etch-workaround --debbuildopts '-sa'
popd
make -C /mnt/snapshots/debian
