# secrets (managed by doppler)

load_env() {
  setopt localoptions allexport
  source "$1"
}

[ -f "$HOME/.secrets" ] && load_env "$HOME/.secrets"
