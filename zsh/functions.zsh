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
