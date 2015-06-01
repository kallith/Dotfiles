if [ $UID -eq 0 ]; then SUFFX="#"; else SUFFX="»"; fi
PROMPT=""
if [[ -n $SSH_CONNECTION ]]; then #if ssh connection show user@host:
PROMPT+=$'%{$fg_bold[green]%}%n@%m:%{$reset_color%}'
fi
PROMPT+=$'%{$fg[cyan]%}$(zsh ~/.oh-my-zsh/path.zsh -l -t)%{$reset_color%}\%{$fg[blue]%} $SUFFX%{$reset_color%} '
RPROMPT=$'$(git_prompt_info)%{$fg[blue]%}[%D{%H:%M:%S}]%{$reset_color%}'

PROMPT2="%{$fg_bold[yellow]%}%_> %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#old prompt
#PROMPT=$'%{$fg[blue]%}%D{[%H:%M:%S]} %{$fg_bold[green]%}%n@%m:%{$reset_color%}%{$fg[white]%}[$(zsh ~/.oh-my-zsh/path.zsh -l -t)]%{$reset_color%}$(git_prompt_info)\%{$fg[blue]%}»%{$reset_color%} '
