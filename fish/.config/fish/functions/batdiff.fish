function batdiff --wraps='git diff --name-only --relative --diff-filter=d | xargs bat --diff' --description 'alias batdiff git diff --name-only --relative --diff-filter=d | xargs bat --diff'
  git diff --name-only --relative --diff-filter=d | xargs bat --diff $argv
        
end
