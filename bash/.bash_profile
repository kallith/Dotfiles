export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY &&XDG_VTNR -eq 1 ]]; then
  exec startx
fi
eval "$(pyenv init --path)"
