script_dir=$(dirname "$0")

source "$script_dir/functions.zsh"

# >>> Begin of customizations >>>
source_zsh "$script_dir/zshrc/nvm.zshrc"
# <<< End of customizations <<<

source "$script_dir/postload.zsh"
