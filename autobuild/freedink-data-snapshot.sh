#!/bin/bash
# Source release
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

set -ex

if [ -n "$1" -a "$1" != "release" ]; then
    echo "Usage: $0 [release x.y.z]"
    exit 1
fi

if [ "$1" == "release" ]; then
    VERSION=$2
    if [ -z "$VERSION" ]; then
	echo "Invalid version."
	exit 1
    fi
fi

cd /usr/src/
if [ ! -e freedink-data ]; then
  git clone -n git://git.savannah.gnu.org/freedink/freedink-data
fi
pushd freedink-data/
git checkout .
git checkout master
git pull
if [ "$1" == "release" ];
then
    git checkout v$VERSION
fi

make dist
mv *.tar.gz /mnt/snapshots/
cp -r gentoo /mnt/snapshots/

popd
