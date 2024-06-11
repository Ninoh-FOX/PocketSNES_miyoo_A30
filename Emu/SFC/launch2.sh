#!/bin/sh
cpuclock performance 2 1200 384
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/ra32.miyoo -v -L $RA_DIR/.retroarch/cores/snes9x2002_libretro.so "$1"
