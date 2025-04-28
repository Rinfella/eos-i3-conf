#!/bin/sh

CLEAR='#00000000'
YELLOW='#FFFF00'
RED='#FF0000'
BLUE='#0476D0'
GREEN='#00FF00'
WHITE='#ffffff'

# Pick a random wallpaper
WALLPAPER=$(find ~/Pictures/wallpapers/ -type f -name "*.png" | shuf -n 1)

# Temporary file
TMPBG=/tmp/lockscreen.png

# Blur + dim it using imagemagick
convert "$WALLPAPER" -blur 0x8 -fill black -colorize 20% "$TMPBG"

# Pause notifications while locked
dunstctl set-paused true
 
# Now lock the screen with the processed image
i3lock \
    --image "$TMPBG" \
    --insidever-color="$CLEAR" \
    --ringver-color="$BLUE" \
    \
    --insidewrong-color="$CLEAR" \
    --ringwrong-color="$RED" \
    \
    --inside-color="$CLEAR" \
    --ring-color="$BLUE" \
    --line-color="$GREEN" \
    --separator-color="$YELLOW" \
    \
    --verif-color="$BLUE" \
    --wrong-color="$RED" \
    --time-color="$WHITE" \
    --date-color="$WHITE" \
    --layout-color="$CLEAR" \
    --keyhl-color="$GREEN" \
    --bshl-color="$RED" \
    \
    --screen 1 \
    --blur 0 \
    --clock \
    --indicator \
    --time-str="%H:%M:%S" \
    --date-str="%A, %Y-%m-%d"

# Resume notifications after unlocking
dunstctl set-paused false
