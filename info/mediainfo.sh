#!/bin/sh

# Analyze file with mediainfo, display result with
# default text editor

# I/O stuff
fileIn=$1
fileOut=/tmp/"$(cat /dev/urandom | tr -cd a-f0-9 | head -c 16)".xml

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run mediainfo
mediainfo --f --output=XML "$fileIn" > "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 0.5 s & delete fileOut 
sleep .5
rm $fileOut

 

