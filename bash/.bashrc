shopt -s autocd

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

BLUE="\[$(tput setaf 12)\]"
RESET="\[$(tput sgr0)\]"
PS1="${BLUE}\w\$ ${RESET}"

SUDO_EDITOR=/bin/vim
export SUDO_EDITOR

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
eval "$(pyenv init -)"


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
