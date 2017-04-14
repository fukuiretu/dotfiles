set -gx EDITOR vi
set -gx PATH $HOME/bin /usr/local/bin $PATH
set -gx LANG ja_JP.UTF-8

##### rbenv #####
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

##### pyenv #####
set -x PATH $HOME/.pyenv/shims $PATH
. (pyenv init - | psub)

##### go #####
set -gx GOPATH $HOME

##### hub #####
eval (hub alias -s)

##### functions #####
function fish_user_key_bindings
    bind \cr peco_select_history
    bind \cg peco_select_ghq_repository
end

function cd
  builtin cd $argv
  ls -la
end
