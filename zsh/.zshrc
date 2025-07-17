# History file location
HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history

# Keep autocompletions near the top
# Remove any calls to compinit and keep before any calls to compdef 
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Source aliases
source $ZDOTDIR/aliases.zsh

# Source defined functions
source $ZDOTDIR/functions.zsh

# Add starship prompt initialization
eval "$(starship init zsh)"

# Conda init
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Should be at the end
# Note: For completions to work, the below line should be added after compinit is called
# --cmd cd changes the cd command
eval "$(zoxide init zsh --cmd cd)"

# Source zsh syntax highlighting (should be at the end)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
