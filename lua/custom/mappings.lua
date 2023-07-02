---@type MappingsTable
local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
      [","] = "",
      ["<leader>n"] = "",
      ["q"] = "",
      ["Q"] = "",
  }
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    [",w"] = {":w <CR>", "Write File"},
    [",q"] = {":q! <CR>", "Close Buffer"},

    [",,"] = {"<C-W>w", "Cycle Tabs"},
    [",s"] = {":vs <CR>", "Vertical Split"},

    [",n"] = {"<cmd> NvimTreeToggle <CR>", "Toggle nvimtree"},
    [",f"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    [",<space>"] = { "/", "Find in file" },

    [",t"] = { "gd", "Go to definition" },

    ["n"] = { "nzzzv", "Next Found -> Centered" },
    ["N"] = { "NzzzV", "Previous Found -> Centered" },
  },

  v = {
    [",s"] = { ":sort<Return>", "Sort highlighted" },
  }
}

-- more keybinds!

return M
