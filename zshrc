# =============================
# Zsh Configuration
# =============================

# ---- Completion ----
autoload -Uz compinit
compinit
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' max-errors 1 numeric
zstyle :compinstall filename '/home/marius/.zshrc'
COMPLETION_WAITING_DOTS="true"

# ---- History ----
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# ---- Keybindings ----
bindkey -e

# ---- Environment ----
export EDITOR="vi"
export VISUAL="vi"
export PAGER="less"

# ---- PATH ----
for dir in ~/node_modules/.bin ~/.local/bin /usr/local/bin; do
  [[ -d $dir ]] && export PATH=$PATH:$dir
done

# ---- Oh My Posh ----
if [[ $- = *i* ]]; then
  if [[ -x ~/.local/bin/oh-my-posh/oh-my-posh ]]; then
    # we're on a raspbian system probably
    eval "$(~/.local/bin/oh-my-posh/oh-my-posh init zsh --config dracula)"
  elif [[ -x /opt/homebrew/bin/oh-my-posh ]]; then
    # we're on a macOS system probably
    eval "$(oh-my-posh init zsh --config dracula)"
  fi
fi

# ---- keychain ----
if [[ -x /usr/bin/ssh-add ]]; then
	[[ -f $HOME/.ssh/id_ed25519 ]] && /usr/bin/ssh-add --apple-load-keychain -q
fi

# ---- iTerm2 Shell Integration ----
if [[ -f $HOME/.iterm2_shell_integration.zsh ]]; then
  source $HOME/.iterm2_shell_integration.zsh
fi

# ---- Optional Settings ----
# DISABLE_MAGIC_FUNCTIONS="true"  # Fix pasting issues
# HIST_STAMPS="yyyy-mm-dd"        # History timestamps
# ZSH_CUSTOM=/path/to/new-custom-folder
