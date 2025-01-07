return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',

  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },

  config = function()
    require('telescope').setup{
      pickers = {
        find_files = { theme = "ivy" },
        live_grep = { theme = "ivy" },
        buffers = { theme = "ivy" },
        help_tags = { theme = "ivy" },
      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        },
      },
    }

    require('telescope').load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope: Find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope: Live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope: Find buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope: Help tags' })
    vim.keymap.set('n', '<leader>fc', function()
      builtin.find_files {
        cwd = os.getenv("XDG_CONFIG_HOME"),
      }
    end, { desc = 'Telescope: Find config files' })

    require("custom.telescope-multigrep").setup(require "telescope.themes".get_ivy({}))
  end,
}
