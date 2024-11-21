#!/bin/sh

CLEAR='#00000000'
YELLOW='#FFFF00'
RED='#FF0000'
BLUE='#0476D0'
GREEN='#00FF00'
WHITE='#ffffff'

# xss-lock --transfer-sleep-lock --
i3lock \
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
	--blur 5 \
	--clock \
	--indicator \
	--time-str="%H:%M:%S" \
	--date-str="%A, %Y-%m-%d" \
	--image ~/Pictures/wallpapers/*.png
