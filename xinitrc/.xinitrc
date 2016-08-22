# restore background
# nitrogen --restore &
sh ~/.fehbg &

# load X settings
xrdb -merge ~/.Xresources &
xrandr --dpi 168

# start networkmanager system tray application
nm-applet &

# backup on my cloud
owncloud &

# clipboard manager
# parcellite -d &

# mount manager
udevil monitor &

# thunar daemon mode
thunar --daemon &

# dunst desktop notifications
dunst -follow mouse &

# global env variables
# move to separate file soon!™
export EDITOR="vim"
# scaling for hidpi
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
export QT_DEVICE_PIXEL_RATIO=2

if [[ $UID -ge 1000 && -d $HOME/bin && -z $(echo $PATH | grep -o $HOME/bin) ]]
then
    export PATH=$HOME/bin:${PATH}
fi

# multitouch support, this prints A LOT so redirect to null
touchegg 2> /dev/null &

# typing delay and repeat rate
xset r rate 200 40

# list of explicitly installed applications on the cloud
pacman -Qqe > ~/ownCloud/documents/yoga_packages.pacman

compton -CGb
sxhkd -m -1 &
stalonetray &
setxkbmap is -variant colemak -option caps:swapescape
exec bspwm
# start window manager
#exec i3
