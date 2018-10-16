#!/bin/sh
if [ -z $1 ]; then
    echo missing output
    exit 1
fi
adb shell screencap -p  > $1
