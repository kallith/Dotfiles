function fish_prompt
  set -l last_status $status

  printf '%s%s%s%s ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)

  if not test $last_status -eq 0
    set_color $fish_color_error
  end
  echo -n '$ '
  set_color normal
end
