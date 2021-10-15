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
#[[ $- = *i* ]] && [[ -d ~/.zsh/liquidprompt ]] && source ~/.zsh/liquidprompt/liquidprompt
[[ $- = *i* ]] && [[ -d ~/.zsh/oh-my-posh ]] && eval "$(~/.zsh/oh-my-posh/oh-my-posh --init --shell zsh --config ~/.poshthemes/mariusstrom.omp.json)"
[[ $- = *i* ]] && [[ -d ~/.zsh/kube-ps1 ]] && source ~/.zsh/kube-ps1/kube-ps1.sh && LP1_PS1_PREFIX=$kube_ps1
[[ -d ~/.local/bin ]] && export PATH=$PATH:~/.local/bin
# https://esc.sh/blog/ssh-agent-windows10-wsl2/
[[ -x /usr/bin/keychain ]] && [[ -f $HOME/.ssh/id_rsa ]] && /usr/bin/keychain --nogui $HOME/.ssh/id_rsa
[[ -x /usr/bin/keychain ]] && [[ -f $HOME/.keychain/$HOST-sh ]] && source $HOME/.keychain/$HOST-sh
