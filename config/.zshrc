export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"

### alias
alias rm="rmtrash"

##### zsh-completions
fpath=(path/to/zsh-completions/src $fpath)

##### pure
fpath+=$HOME/.zsh/pure

##### anyenv
eval "$(anyenv init -)"

##### go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

##### peco
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^G' peco-src

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

##### direnv
eval "$(direnv hook zsh)"
