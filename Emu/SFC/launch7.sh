#!/bin/sh
cpuclock performance 2 1200 384
echo $0 $*
export LD_LIBRARY_PATH=/mnt/SDCARD/miyoo/lib/sdl2:$LD_LIBRARY_PATH

cd /mnt/SDCARD/App/PocketSNES

if [ "${1##*.}" = "7z" ]; then
    temp_dir=/tmp/rom
    mkdir $temp_dir
    7zr x "$1" -o"$temp_dir"
    file_to_run=$(find "$temp_dir" -type f \( -name "*.smc" -o -name "*.sfc" \) | head -n 1)
    if [ -n "$file_to_run" ]; then
        ./PocketSNES "$file_to_run"
    else
        echo "Not PocketSNES game found."
    fi
    rm -r "$temp_dir"
else
./PocketSNES "$1"
fi
