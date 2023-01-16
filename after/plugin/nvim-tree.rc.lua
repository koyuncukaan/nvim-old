local status, nvim_tree_api = pcall(require, "nvim-tree.api")
if (not status) then return end
local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local function open_file_in_new_tab()
  local file = nvim_tree_api.fs.copy.absolute_path()
  nvim_tree_api.node.open.tab(file)
end
local function change_focus()
  --nvim_tree_api.tree.close()
end
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  open_on_tab = true,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "<tab>", action = "change_focus", action_cb= change_focus },
        { key = "nt", action = "tab_new", action_cb = open_file_in_new_tab },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
