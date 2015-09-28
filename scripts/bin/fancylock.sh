#!/bin/bash
# requires: scrot and imagemagick
/usr/bin/scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f /home/user/images/icons/lock-icon.png ]] && convert /tmp/screen.png /home/user/images/icons/lock-icon-1.png -gravity center -composite -matte /tmp/screen.png
i3lock -i /tmp/screen.png
# #!/bin/sh
# scrot /tmp/screen.png
# convert /tmp/screen.png -scale 25% -scale 400% /tmp/screen.png -gravity center -composite -matte /tmp/screen.png
# i3lock -d -i /tmp/screen.png 
