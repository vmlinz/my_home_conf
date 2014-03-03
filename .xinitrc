#!/bin/sh

if [ -f $HOME/.xmodmap ]; then
    /usr/bin/xmodmap $HOME/.xmodmap
fi
