# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

status = Status(standalone=True)
my_colors={'bg':'#2b303b',
           'fg':'#65737e',
        'black':'#2b303b',
          'red':'#bf616a',
        'green':'#a3be8c',
       'yellow':'#ebcb8b', 
         'blue':'#8fa1b3',
      'magenta':'#b48ead',
         'cyan':'#96b5b4',
        'white':'#c0c5ce'
           }

# date/time
status.register("clock",
    format="%a %-d %b %X",
    color=my_colors['white']
    )

# This would also display a desktop notification (via dbus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
status.register("battery",
    battery_ident="BAT1",
    format="{status}{percentage:.2f}% {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS": "↓",
        "CHR": "↑",
        "FULL": "=",
    },
    color=my_colors['yellow'],
    full_color=my_colors['green'],
    charging_color=my_colors['blue'],
    critical_color=my_colors['red']
    )

# wireless
status.register("wireless",
   interface="wlp1s0",
   format_up="{essid} {quality:03.0f}%",
   color_up=my_colors['green'],
   color_down=my_colors['red']
   )

# # show status of disks
# status.register("disk",
#     path="/",
#     format="/ {used}/{total}G",
#     round_size=1,
#     color=my_colors['white'],
#     critical_limit=10,
#     critical_color=my_colors['red'],
#     )
# status.register("disk",
#     path="/home",
#     format="/home {used}/{total}G",
#     round_size=1,
#     color=my_colors['white'],
#     critical_limit=25,
#     critical_color=my_colors['red']
#     )

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    format="♪{volume}{volume_bar}",
    color_unmuted=my_colors['white'],
    color_muted=my_colors['red'],
    vertical_bar_width=1,
    )
# # backlight module 
# status.register("backlight",
#     format="☀{percentage:2.0f}",
#     backlight="intel_backlight",
#     color=my_colors['magenta'],
#     )


# Shows mpd status
status.register("mpd",
    format="{status} {artist} - {title} {song_elapsed}/{song_length}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },
    color=my_colors['magenta'],
    )

from i3pystatus.mail import thunderbird
status.register("mail",
        backends=[thunderbird.Thunderbird()],
        format="✉ {unread}",
        format_plural="✉ {unread}",
        hide_if_null=False,
        color=my_colors['white'],
        color_unread=my_colors['red'],
        )

status.register("shell",
        command="xtitle -t 80",
        interval=1,
        color=my_colors['yellow']
        )

status.run()
 
