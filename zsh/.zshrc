# Keep autocompletions near the top
# Remove any calls to compinit and keep before any calls to compdef 
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Useful keymaps
alias ls="ls -Alhp --color=auto"

# Function to recursively remove .DS_Store files
rmdsstore() {
    # Get the absolute path of the directory being passed or current directory
    local target_dir="${@:-.}"
  
    # If target_dir is the home directory, do not search recursively
    if [[ "$(realpath "$target_dir")" == "$HOME" ]]; then
        find "$target_dir" -maxdepth 1 -type f -name .DS_Store -delete
    else
        find "$target_dir" -type f -name .DS_Store -delete
    fi
}

# Function to recursively remove .localized files
rmlocalized() {
    local target_dir="${@:-.}"
    find "$target_dir" -type f -name .localized -delete
}

# Add starship prompt initialization at the end
eval "$(starship init zsh)"

# Source zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Should be at the end
# Note: For completions to work, the below line should be added after compinit is called
# --cmd cd changes the cd command
eval "$(zoxide init zsh --cmd cd)"
