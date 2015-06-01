# restore background
# nitrogen --restore &
sh ~/.fehbg &

# load X settings
xrdb -merge ~/.Xresources &

# 
nm-applet &

# 
owncloud &

# clipboard manager
# parcellite -d &

# mount manager
udevil monitor &

# global env variables
export EDITOR="vim"

#multitouch
touchegg 2> /dev/null &

#typing delay and repeat rate
xset r rate 200 40

# #bspwm panel env variables
# PANEL_FIFO=/tmp/panel-fifo
# PANEL_HEIGHT=24
# PANEL_FONT_FAMILY="-*-terminus-medium-r-normal-*-12-*-*-*-c-*-*-1"
# export PANEL_FIFO PANEL_HEIGHT PANEL_FONT_FAMILY
# sxhkd &
# exec bspwm


# start window manager
exec i3

