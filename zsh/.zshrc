# Keep autocompletions near the top
# Remove any calls to compinit and keep before any calls to compdef 
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Useful keymaps
alias ls="ls -Alhp --color=auto"

# Function to recursively remove .DS_Store files
function rmdsstore() {
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
function rmlocalized() {
    local target_dir="${@:-.}"
    find "$target_dir" -type f -name .localized -delete
}

# Tmux sessionizer function
# If tmux session with the working directory name exists then attach to it
# Else create a new session with the pwd name
function tmux-sessionizer {
  name=$(basename `pwd` | sed -e 's/\.//g')
  if tmux ls 2>&1 | grep "$name"; then
    tmux attach -t "$name"
  else
    tmux new-session -s "$name"
  fi
}

# Add starship prompt initialization at the end
eval "$(starship init zsh)"

# Source zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Should be at the end
# Note: For completions to work, the below line should be added after compinit is called
# --cmd cd changes the cd command
eval "$(zoxide init zsh --cmd cd)"
