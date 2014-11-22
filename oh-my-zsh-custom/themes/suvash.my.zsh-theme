function prompt_char {
    if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

if which rvm-prompt &> /dev/null; then
  PROMPT='
$fg[green][%D{%H:%M:%S}] %{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$reset_color%}%{$fg[red]%}$(~/.rvm/bin/rvm-prompt)%{$reset_color%} 
$(virtualenv_info)$(prompt_char) '
else
  if which rbenv &> /dev/null; then
    PROMPT='
$fg[green][%D{%H:%M:%S}] %{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$reset_color%}%{$fg[red]%}$(rbenv version | sed -e "s/ (set.*$//")%{$reset_color%} 
$(virtualenv_info)$(prompt_char) '
  fi
fi


ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
