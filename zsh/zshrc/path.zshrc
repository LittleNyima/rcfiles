# Path

## Bun
export PATH="/Users/littlenyima/.bun/bin:$PATH"

# Meitu Connectors
# >>> meitu-connectors >>>
MC_MANAGED=${MEITU_CONNECTORS_HOME:+${MEITU_CONNECTORS_HOME%/}/shell/zshenv}
if [ -z "$MC_MANAGED" ]; then
    MC_MANAGED='/Users/littlenyima/.meitu-connectors/shell/zshenv'
fi
if [ -f "$MC_MANAGED" ]; then
    . "$MC_MANAGED"
fi
# <<< meitu-connectors <<<
