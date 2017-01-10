source $OMF_PATH/init.fish

set -gx EDITOR vi
set -gx PATH $HOME/bin /usr/local/bin $PATH
set -gx LANG ja_JP.UTF-8

##### go #####
set -gx GOPATH $HOME

##### hub #####
eval (hub alias -s)

function fish_user_key_bindings
    bind \cr peco_select_history
    bind \cg peco_select_ghq_repository
end

function cd
  builtin cd $argv
  ls -la
end
