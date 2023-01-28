#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/"

# Terminate already running bar instances
#killall -q polybar

# Wait until the processes have be:wqen shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    sleep 1&
    MONITOR=$m polybar -q new -c "$DIR/config.ini"
    
  done
else
    sleep 1&
		polybar -q new -c "$DIR/config.ini"
fi

