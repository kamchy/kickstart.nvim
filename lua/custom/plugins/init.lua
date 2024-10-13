-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- from ~/nvchad_backup/config/nvim/lua/custom
  --
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
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('telekasten')
    end
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
