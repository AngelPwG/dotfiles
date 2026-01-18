#!/usr/bin/bash
hypr=~/.config/hypr
scripts=$hypr/scripts/waybar

index=$(cat $TEMP)
index=$((index + 1))
if [ $index -ge ${#files[@]} ]; then
	index=0
fi
echo $index >$TEMP
exit 0
