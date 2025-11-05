#!/bin/zsh
LAYOUT=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name == "at-translated-set-2-keyboard") | .active_keymap')

if [[ "$LAYOUT" == *"English"* ]]; then
    echo "{\"text\":\"ENG\", \"class\": \"lang-en\"}"
elif [[ "$LAYOUT" == *"Georgian"* ]]; then
    echo "{\"text\":\"ᲥᲐᲠ\", \"class\": \"lang-ka\"}"
else
    echo "{\"text\":\"??\", \"class\": \"lang-unknown\"}"
fi
