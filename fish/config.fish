# Options: --is-login
if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)
    # set --global --export HOMEBREW_PREFIX "/opt/homebrew";
    # set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar";
    # set --global --export HOMEBREW_REPOSITORY "/opt/homebrew";
    # fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin";
    # if test -n "$MANPATH[1]"; set --global --export MANPATH '' $MANPATH; end;
    #  if not contains "/opt/homebrew/share/info" $INFOPATH; set --global --export INFOPATH "/opt/homebrew/share/info" $INFOPATH; end;

    set --global --export STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
    starship init fish | source
end
