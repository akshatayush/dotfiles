# Options: --is-login
if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)

    set -U fish_greeting
    set -gx MANPAGER 'nvim +Man!'

    set --global --export STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
    starship init fish | source

    zoxide init fish --cmd cd | source
end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/akshat/.lmstudio/bin
# End of LM Studio CLI section

# Added by claude code
set -gx PATH $PATH /Users/akshat/.local/bin
