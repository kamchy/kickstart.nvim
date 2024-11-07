-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- from ~/nvchad_backup/config/nvim/lua/custom
  --
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'renerocksai/telekasten.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' }
  },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'gruvbox_dark',
        -- theme = 'tokyonight',

        component_separators = '|',
        section_separators = '',
      },
    },
  },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {}
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,

    config = function()
      vim.cmd.colorscheme 'gruvbox'
      require('gruvbox').setup {
        style = 'light'
      }
    end
  },
  {
    'renerocksai/telekasten.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'renerocksai/calendar-vim' },
    config = function()
      require('telekasten')
    end
  },
  {
    'renerocksai/calendar-vim',

  },
  -- from https://www.reddit.com/r/neovim/comments/118unhi/nvimtree_follow_open_files_buffers/
  update_focused_file = {
    enable = true,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    }
    ---overrides.nvimtree,
  },

}
