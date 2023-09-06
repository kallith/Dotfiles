# Use bat as man pager.
set -Ux MANROFFOPT "-c" 
set -Ux MANPAGER "sh -c 'col -bx | bat -l man --plain --paging=always'"
# Disable fish greeting
set -U fish_greeting
set -Ux EDITOR nvim
