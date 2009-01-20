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

cd /usr/src/
if [ ! -e freedink-data ]; then
  git clone -n git://git.savannah.gnu.org/freedink/freedink-data
fi
(cd freedink-data && git pull)

pushd freedink-data/
make dist
mv *.tar.gz /mnt/snapshots/
cp -r gentoo /mnt/snapshots/

popd
