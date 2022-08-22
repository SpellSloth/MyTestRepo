#!/usr/bin/bash
dir="$1"
if [ -d $dir ]; then
	echo -e "checking disk usage in $dir\n"
else
	echo -e "$dir is not a directory!\n"
	exit 101
fi
top1=$(du $dir -d 1 2>/dev/null | sort -rn | head -n 2 | \
	tail -n 1 | cut -f 2)
disk=$(du $dir -d 1 2>/dev/null | sort -rn | head -n 2 | \
        tail -n 1 | cut -f 1)
echo -e "$top1 with disk usage $disk"
