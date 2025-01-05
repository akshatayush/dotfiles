# Installed neovim plugins

1. [Lazy](https://github.com/folke/lazy.nvim) - Plugin manager
2. [Rose-pine](https://github.com/rose-pine/neovim) - Colorscheme
3. [Lualine](https://github.com/nvim-lualine/lualine.nvim) - Configurable statusline
    - [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Dev icons
4. [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax tree highlighting
5. [Telescope](https://github.com/nvim-telescope/telescope.nvim) - File search
    - [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Lua functions
    - [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Fuzzy search extension

# Changelog

* Added lualine for status line
* Added Treesitter for syntax parsing and Telescope for fuzzy file search
* Refactor `.zshrc` into separate files
* Added `lazy.nvim` plugin manager and set up config structure
* Added simple `neovim` config
* Small bug fixes (`HISTFILE`, `tmux` copy mode)
* Added a handy `tmux-sessionizer` function
* Added `tmux` config
* Seggregated environment variables in `.zshenv` file that is loaded before `.zshrc`
* Initialized `zoxide` and `zsh-autocomplete`
* Changed the location of `SHELL_SESSION_DIR` in `/etc/zshrc_Apple_Terminal`
* Added `zsh-syntax-highlighting` in `.zshrc`
* Set `STARSHIP_CONFIG` in `.zshrc`
* Added `starship` config
* Added `ghostty` config
* Initialized `homebrew` in `.zprofile`
* Added `.zshrc` with a basic config
* Set `ZDOTLIB` environment variable in `/etc/zshenv`

## TODO

- [x] Set configuration folder using environment variables
- [x] Install `homebrew`
- [x] Set up basic `.zshrc` config
- [x] Configure terminal settings
- [x] Add a terminal prompt
- [x] Add zsh sytax highlighting
- [x] Add additional zsh features [zoxide and zsh-autocomplete]
- [x] Install and configure tmux
- [x] Install neovim
- [x] Set up neovim config
- [x] Refactor existing configs 
- [x] Add a neovim package manager and plugins
- [ ] Configure neovim LSP
