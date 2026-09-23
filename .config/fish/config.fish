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

# Added by Antigravity CLI installer
set -gx PATH "$HOME/.local/bin" $PATH

# Added by LM Studio CLI (lms)
set -gx PATH $PATH "$HOME/.lmstudio/bin"
# End of LM Studio CLI section

# Nvidia Cuda Post Installation Actions
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#post-installation-actions
set -gx PATH $PATH "/usr/local/cuda-13.3/bin"
set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH "/usr/local/cuda-13.3/lib64"

# LibVirt Default URI
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"

# Cameradar
set -gx PATH $PATH "$HOME/go/bin/"
