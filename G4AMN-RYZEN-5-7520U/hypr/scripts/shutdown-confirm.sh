#!/bin/zsh

confirm=$(echo -e "No\nYes" | rofi -dmenu -i -p "Shutdown?")

if [[ $confirm == "Yes" ]]; then
  systemctl poweroff
fi

