#!/bin/bash
#

if [ "$1" = '' ]; then
    script -f Compile.log -c 'bash other/tools/auto_maker.sh'
    read anykey
else
    script -f Compile.log -c 'bash other/tools/auto_maker.sh '$1' '$2''
    read anykey
fi
