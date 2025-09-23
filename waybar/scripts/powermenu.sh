#!/bin/bash

# Menu options
options=" Lock\n Logout\n Reboot\n Shutdown\n Cancel"

# Show menu and get selection
chosen=$(echo -e "$options" | wofi --dmenu --prompt="Power Menu:")

# Handle selection
case "$chosen" in
    " Lock") swaylock ;;
    " Logout") hyprctl dispatch exit ;;
    " Reboot") systemctl reboot ;;
    " Shutdown") systemctl poweroff ;;
esac
