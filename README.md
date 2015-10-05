# Dotfiles

My configuration files, ready to be [stow](http://www.gnu.org/software/stow/)-ed

## Some (unclear) dependencies

* Lemonbar
    * [thunderbird-dbus-sender](https://github.com/janoliver/thunderbird-dbus-sender)
    * [zscroll](https://github.com/noctuid/zscroll)
    * [xtitle](https://github.com/baskerville/xtitle)
    * alsa-utils (`amixer`)
    * acpi (battery info)
* sxhkd
    * dmenu (for multiple choice keybinds)
* stalonetray
    * `xdotool` (toggle stalonetray from lemonbar)

## Notes on HiDPI

There is a small script `apply_no_hidpi.sh` which tries to remove all hidpi settings
