#! /usr/bin/zsh
#
~/dotfiles/scripts/select_wallpaper.sh

notify-send "System" "Updated wallpaper successfully!"

killall hyprpaper
hyprpaper &
