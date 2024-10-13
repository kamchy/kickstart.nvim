-- this is a snippet from kickstart README.md
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

neo = {
  "nvim-neo-tree/neo-tree.nvim",
  version = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim"               -- images?
  },
  config = function()
    require('neo-tree').setup {

    }
  end,
}
return neo
-- return {} -- uncomment to disable
