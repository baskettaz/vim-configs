local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
  return
end

-- recomended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1


-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]]) --guifg to change the color
vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])   --guifg to change the color

-- configure nvim-tree
nvimtree.setup({
  -- change folder arrow icons
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})

--  -- set keymaps
--  local keymap = vim.keymap -- for conciseness
--
--end,
--}

