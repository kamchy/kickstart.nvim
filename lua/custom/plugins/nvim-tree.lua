-- from https://www.reddit.com/r/neovim/comments/118unhi/nvimtree_follow_open_files_buffers/
local nvimtree = {
  "nvim-tree/nvim-tree.lua",
  opts = {
    git = {
      enable = true,
    },

    update_focused_file = {
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
}
-- use filetree
return {}
