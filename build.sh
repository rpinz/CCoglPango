#!/bin/sh
#
Mod=CoglPango
mod=cogl-pango
Module=${Mod}-1.0
module=${mod}-1.0
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
LINKFLAGS=`pkg-config --libs $module cogl-1.0 cogl-gl-1.0 cogl-path-1.0 pango gobject-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module cogl-1.0 cogl-gl-1.0 cogl-path-1.0 pango gobject-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
exec swift build $CCFLAGS $LINKFLAGS "$@"
