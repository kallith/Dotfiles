export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc
eval "$(pyenv init --path)"

if systemctl -q is-active graphical.target && [[ ! $DISPLAY &&XDG_VTNR -eq 1 ]]; then
  exec startx
fi

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec fish
fi
