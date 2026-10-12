# Path

## Bun
export PATH="/Users/littlenyima/.bun/bin:$PATH"

# Meitu Connectors
export PATH='/Users/littlenyima/.local/bin':"$PATH"
[[ -x '/Users/littlenyima/.local/bin/meitu-connectors' ]] && \
  eval "$('/Users/littlenyima/.local/bin/meitu-connectors' env --shell=zsh)"
