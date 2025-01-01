# History file location
HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history

# Keep autocompletions near the top
# Remove any calls to compinit and keep before any calls to compdef 
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Source aliases
source $ZDOTDIR/aliases.zsh

# Source defined functions
source $ZDOTDIR/functions.zsh

# Add starship prompt initialization at the end
eval "$(starship init zsh)"

# Source zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Should be at the end
# Note: For completions to work, the below line should be added after compinit is called
# --cmd cd changes the cd command
eval "$(zoxide init zsh --cmd cd)"
