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
# Uncomment one of the following lines to change the auto-update behavior
#zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
#zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# run oh-my-posh dependent on host configuration
[[ $- = *i* ]] && [[ -x ~/.zsh/oh-my-posh/oh-my-posh ]] && eval "$(~/.zsh/oh-my-posh/oh-my-posh init zsh --config ~/.poshthemes/dracula.omp.json)"
[[ $- = *i* ]] && [[ -x /opt/homebrew/bin/oh-my-posh ]] &&  eval "$(oh-my-posh init zsh --config dracula)"
#[[ $- = *i* ]] && [[ -d ~/.zsh/kube-ps1 ]] && source ~/.zsh/kube-ps1/kube-ps1.sh && LP1_PS1_PREFIX=$kube_ps1
[[ -d ~/.local/bin ]] && export PATH=$PATH:~/.local/bin
[[ -d /usr/local/bin ]] && export PATH=$PATH:/usr/local/bin

# https://esc.sh/blog/ssh-agent-windows10-wsl2/
[[ -x /usr/bin/keychain ]] && [[ -f $HOME/.ssh/id_rsa ]] && /usr/bin/keychain --nogui $HOME/.ssh/id_rsa
[[ -x /usr/bin/keychain ]] && [[ -f $HOME/.keychain/$HOST-sh ]] && source $HOME/.keychain/$HOST-sh

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
