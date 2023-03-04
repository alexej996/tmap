#!/usr/bin/bash
grep -v Version tmap/DEBIAN/control > control.tmp
echo Version: $(grep VERSION"=" ../tmap | cut -d"'" -f2) >> control.tmp
mv control.tmp tmap/DEBIAN/control
