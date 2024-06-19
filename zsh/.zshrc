# Setup zinit plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Setup oh-my-posh
POSH_HOME="${HOME}/.local/bin"
[ ! -f "${POSH_HOME}/oh-my-posh" ] && curl -s https://ohmyposh.dev/install.sh | bash -s -- -d "$POSH_HOME"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/ohmyposh.toml)"

# General shell settings
export EDITOR="/usr/bin/nvim"