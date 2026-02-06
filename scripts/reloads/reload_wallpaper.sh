#! /usr/bin/zsh
#
~/dotfiles/scripts/select_wallpaper.sh

notify-send "Cron" "Updated wallpaper successfully!"

killall hyprpaper
hyprctl dispatch exec hyprpaper
