# Homebrew

require_commands /opt/homebrew/bin/brew || return 1

eval "$(/opt/homebrew/bin/brew shellenv zsh)"
