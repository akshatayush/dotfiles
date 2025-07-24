## Changelog

* v2.0 (current)
    - Added `oil.nvim` and `render-markdown` to neovim
    - Switched to `zellij` for terminal multiplexing
    - Switched to `fish` shell and added config

* v1.0
    - Added `luasnip` for snippets and added various completion sources
    - Added `nvim-cmp` for autocompletions
    - Added `nvim-lspconfig` for LSP communication
    - Added `gitsigns` for git gutter
    - Added `which-key` to reference keybinds
    - Added `lualine` for status line
    - Added `treesitter` for syntax parsing and `telescope` for fuzzy file search
    - Added `lazy.nvim` plugin manager and set up config structure
    - Added simple `neovim` config
    - Small bug fixes (`HISTFILE`, `tmux` copy mode)
    - Added a handy `tmux-sessionizer` function
    - Added `tmux` config
    - Initialized `zoxide` and `zsh-autocomplete`
    - Changed the location of `SHELL_SESSION_DIR` in `/etc/zshrc_Apple_Terminal`
    - Added `zsh-syntax-highlighting`
    - Added `starship` config
    - Added `ghostty` config
    - Initialized `homebrew` in `.zprofile`
    - Added `.zshrc` with a basic config
    - Set `ZDOTLIB` environment variable in `/etc/zshenv`

## Installed neovim plugins

1. [lazy](https://github.com/folke/lazy.nvim) - Plugin manager
2. [rose-pine](https://github.com/rose-pine/neovim) - Colorscheme
3. [lualine](https://github.com/nvim-lualine/lualine.nvim) - Configurable statusline
    - [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Dev icons
4. [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax tree highlighting
5. [telescope](https://github.com/nvim-telescope/telescope.nvim) - File search
    - [plenary](https://github.com/nvim-lua/plenary.nvim) - Lua functions
    - [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Fuzzy search extension
6. [which-key](https://github.com/folke/which-key.nvim) - To memorize keybinds
7. [gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Git gutter
8. [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Communication with LSP servers
    - [lazydev](https://github.com/folke/lazydev.nvim) - Configure Lua LSP for neovim config
    - [mason](https://github.com/williamboman/mason.nvim) - Installing LSP servers
    - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) - Linking mason and lspconfig
    - [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) - Managing mason tools in one place
    - [fidget](https://github.com/j-hui/fidget.nvim) - Minimal display for LSP notifications
9. [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Autocompletion engine
    - [luasnip](https://github.com/L3MON4D3/LuaSnip) - Snippets engine
    - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Snippet source for luasnip
    - [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - Snippet source for luasnip
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP completions source
    - [cmp-path](https://github.com/hrsh7th/cmp-path) - Completion source for file paths
    - [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) - Completion source for command line
    - [cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help) - Function signature help
10. [oil](https://github.com/stevearc/oil.nvim) - Edit the filesystem like a buffer
11. [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) - Render markdown files in buffer
