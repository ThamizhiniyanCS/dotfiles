if status is-interactive
    # Commands to run in interactive sessions can go here
	starship init fish | source
end

# pnpm
set -gx PNPM_HOME "/home/thamizhiniyancs/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/thamizhiniyancs/.lmstudio/bin

# Flutter SDK
fish_add_path -g -p ~/development/flutter/bin

# 7z binaries path
fish_add_path -g -p /opt/7z

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
