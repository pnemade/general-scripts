#! /bin/bash
#
# Authors: Parag Nemade <pnemade AT redhat DOT com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

FONTNAME="google-noto"
for file in `ls *.conf`;
do
  metfile=`echo $file | sed "s/66-//;s/.conf/.metainfo.xml/"`
  echo $metfile
  idname=`echo $metfile| sed "s/.metainfo.xml//"`
  cat << EOF > $metfile
<?xml version="1.0" encoding="UTF-8"?>
<!-- Copyright 2014 Parag Nemade <pnemade AT redhat DOT com> -->
<component type="font">
  <id>$idname</id>
  <metadata_license>CC-BY-3.0</metadata_license>
  <extends>$FONTNAME</extends>
</component>
EOF
done
