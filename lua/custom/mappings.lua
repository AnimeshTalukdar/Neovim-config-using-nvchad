---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>","window left"},
    
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>","window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>","window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>","window up"},

    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-S-K>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
  t = {
    ["<C-S-K>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

-- more keybinds!

return M
