function batdiff
    git diff --name-only --relative --diff-filter=d $argv | xargs bat --style=default --diff
end
