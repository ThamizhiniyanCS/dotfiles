set -gx PATH $HOME/.local/bin $PATH
set -gx BUN_INSTALL $HOME/.bun
set -gx PATH $BUN_INSTALL/bin $PATH
set -gx FZF_ALT_C_COMMAND 'fd --type d --exclude .git --follow --hidden'
set -gx FZF_DEFAULT_COMMAND 'fd --type f --exclude .git --follow --hidden'
set -gx FZF_DEFAULT_OPTS '--preview=\'bat --color=always -n {}\' --bind \'ctrl-/:toggle-preview\' --color bg:#282a36,bg+:#44475a,fg:#f8f8f2,fg+:#f8f8f2,header:#6272a4,hl:#bd93f9,hl+:#bd93f9,info:#ffb86c,marker:#ff79c6,pointer:#ff79c6,prompt:#50fa7b,spinner:#ffb86c'

status is-login; and begin
    set -gx NIX_PATH nixpkgs=channel:nixos-unstable
    set -gx NIX_LOG info
    set -gx TERMINAL kitty
    set -gx EDITOR nvim

    if test (tty) = /dev/tty1
        exec start-hyprland >/dev/null 2>&1
    end
end

set -gx LIBVIRT_DEFAULT_URI qemu:///system

status is-interactive; and begin
    # Navigation
    abbr --add .. 'cd ..'
    abbr --add ... 'cd ../..'

    # Files
    alias ls 'eza -lh --group-directories-first --icons=auto'
    alias la 'ls -a'
    alias ll 'eza -l --icons=auto'
    alias lla 'll -a'
    alias lt 'eza --tree --level=2 --long --icons=auto --git'
    alias lta 'lt -a'

    # Git
    alias g git
    alias gcm 'git commit -m'
    alias gcam 'git commit -a -m'
    alias gcad 'git commit -a --amend'

    # Clipboard
    alias c 'xclip -selection clipboard'

    # Shell integrations
    fzf --fish | source
    starship init fish | source
    zoxide init fish | source
end
