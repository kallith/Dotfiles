# restore background
# nitrogen --restore &
sh ~/.fehbg &

# load X settings
xrdb -merge ~/.Xresources &

# start networkmanager system tray application
nm-applet &

# backup on my cloud
owncloud &

# clipboard manager
# parcellite -d &

# mount manager
udevil monitor &

# global env variables
export EDITOR="vim"

# multitouch support, this prints A LOT so redirect to null
touchegg 2> /dev/null &

# typing delay and repeat rate
xset r rate 200 40

# list of explicitly installed applications on the cloud
pacman -Qqe > ~/ownCloud/documents/yoga_packages.pacman

# start window manager
exec i3
