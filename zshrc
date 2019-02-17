# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' max-errors 1 numeric
zstyle :compinstall filename '/home/marius/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
export EDITOR="vi"
export VISUAL="vi"
export PAGER="less"
setopt AUTO_CD
[[ $- = *i* ]] && [[ -d ~/.zsh/liquidprompt ]] && source ~/.zsh/liquidprompt/liquidprompt
[[ $- = *i* ]] && [[ -d ~/.zsh/kube-ps1 ]] && source ~/.zsh/kube-ps1/kube-ps1.sh
#LP1_PS1_PREFIX=$kube_ps1
