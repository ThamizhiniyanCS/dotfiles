export PATH="$HOME/.local/bin:$PATH"

# Yazi
set --export EDITOR nvim

# Bun Config
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source
end
