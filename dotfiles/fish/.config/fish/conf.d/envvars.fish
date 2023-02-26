# Use bat as man pager.
set -xU MANPAGER "sh -c 'col -bx | bat -l man --plain --paging=always'"
# Disable fish greeting
set -U fish_greeting

