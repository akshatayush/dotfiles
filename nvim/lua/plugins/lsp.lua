return {
  "neovim/nvim-lspconfig",
  dependencies = {

    -- lazydev configures Lua LSP for neovim configs
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },

    -- Mason dependencies
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "WhoIsSethDaniel/mason-tool-installer.nvim" },

    -- Useful status updates for LSP via notification manager
    { 'j-hui/fidget.nvim', opts = {} },

  },

  config = function()
    -- Enable the following language servers
    -- Add any additional override configuration in the following tables. Available keys are:
    --  - cmd (table): Override the default command used to start the server
    --  - filetypes (table): Override the default list of associated filetypes for the server
    --  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
    --  - settings (table): Override the default settings passed when initializing the server.
    --        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
    local servers = {
      pyright = {},
      lua_ls = {},
    }

    require("mason").setup()

    local ensure_installed = vim.tbl_keys(servers or {})

    require("mason-tool-installer").setup {
      ensure_installed = ensure_installed,
    }

    require("mason-lspconfig").setup {
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          require("lspconfig")[server_name].setup(server)
        end,
      },
      ensure_installed = {},
      automatic_installation = false,
    }
  end,
}
