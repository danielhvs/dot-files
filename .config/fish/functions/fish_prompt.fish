function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

  # User
  set_color $fish_color_user
  set_color normal

  # Host
  set_color $fish_color_host
  set_color normal

  # PWD
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  __terlar_git_prompt

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n ' '
  set_color normal
end
