#!/bin/sh
    
echo "Hello $INPUT_MYINPUT"
#memory=$(cat /proc/meminfo)
#echo "::set-output name=memory::$memory"

# Get memory info (just the first line to keep it clean)
memory=$(head -n 1 /proc/meminfo)

# The modern way to send data back to GitHub Actions
echo "memory=$memory" >> "$GITHUB_OUTPUT"
