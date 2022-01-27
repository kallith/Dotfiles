# add ~/bin to path
if [[ $UID -ge 1000 && -d $HOME/bin && -z $(echo $PATH | grep -o $HOME/bin) ]]
then
    export PATH=$HOME/bin:${PATH}
fi

# programs to launch
# wallpaper
nitrogen --restore &
# keybinds
sxhkd -m -1 &
#nvidia fan overrides
nvidiafancontrol.sh 10 85 75 50 &

# keyboard layout
xset r rate 200 40
setxkbmap is -variant colemak caps:swapescape
xmodmap -e "clear lock"
xmodmap -e "keycode 9 = grave asciitilde dead_tilde asciitilde dead_tilde"
xmodmap -e "keycode 49 = Escape BackSpace Escape BackSpace BackSpace BackSpace BackSpace"

exec bspwm
