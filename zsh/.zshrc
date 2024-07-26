PATH="${HOME}/.local/bin:${PATH}"

# Setup zinit plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Setup ohmyposh
POSH_HOME="${HOME}/.local/share/zinit"
[ ! -f "${POSH_HOME}/oh-my-posh" ] && curl -s https://ohmyposh.dev/install.sh | bash -s -- -d "$POSH_HOME"
eval "$(${POSH_HOME}/oh-my-posh init zsh --config $HOME/.config/ohmyposh/ohmyposh.toml)"

# Install plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light jeffreytse/zsh-vi-mode

# Setup vi mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=kj
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
ZVM_READKEY_ENGINE=$ZVM_READKEY_ENGINE_ZLE

function after() {
    bindkey "^p" reverse-menu-complete
    bindkey "^n" complete-word
    bindkey "^a" autosuggest-accept
    bindkey "^e" send-break
    bindkey "^y" kill-line
}
zvm_after_init_commands+=(after)

# Load completions
autoload -U compinit && compinit
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
setopt menu_complete
setopt no_list_ambiguous

# History
[ ! -f "${HOME}/.zsh_history" ] && touch "${HOME}/.zsh_history"
HISTSIZE=5000
HISTFILE="${HOME}/.zsh_history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"

# General shell settings
EDITOR="/usr/bin/nvim"
