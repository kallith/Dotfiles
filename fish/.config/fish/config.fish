if status is-interactive
    # Commands to run in interactive sessions can go here
end

pyenv init - | source
# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

set -g __fish_git_prompt_char_stateseparator ''
set -g __fish_git_prompt_color_branch brmagenta
set -g __fish_git_prompt_color_cleanstate brgreen
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate "yes"
set -g __fish_git_prompt_showupstream "informative"
