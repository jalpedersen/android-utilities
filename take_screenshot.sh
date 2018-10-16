#!/bin/sh
if [ -z $1 ]; then
    echo missing output
    exit 1
fi
if [ "$NO_CROP" == "1" ]; then
    adb shell screencap -p  > $1
else
    top=${CROP_TOP:-70}
    adb shell screencap -p | convert -gravity North -chop 0x$top - $1
fi
