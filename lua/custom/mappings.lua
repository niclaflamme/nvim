---@type MappingsTable
local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    [","] = "",
    [",a"] = "",
    ["<leader>n"] = "",
    ["q"] = "",
    ["Q"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    [",w"] = { ":w <CR>", "Write File" },
    [",q"] = { ":q <CR>", "Close Buffer" },
    [",x"] = { ":qa! <CR>", "Quit everything" },

    [",,"] = { ":w <CR> <C-W>w", "Cycle Tabs" },
    [",s"] = { ":w <CR> :vs <CR>", "Vertical Split" },

    [",n"] = { ":w <CR> <cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    [",f"] = { ":w <CR> <cmd> Telescope find_files <CR>", "Find files" },
    [",a"] = { ":w <CR> <cmd> Telescope live_grep <CR>", "Find in files" },
    [",<space>"] = { "/", "Find in that file" },

    [",p"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },

    ["n"] = { "nzzzv", "Next Found -> Centered" },
    ["N"] = { "NzzzV", "Previous Found -> Centered" },

    [",t"] = { "gd", "Go to definition" },
  },

  v = {
    [",,"] = { ":sort<Return>", "Sort highlighted" },

    [",t"] = { "gd", "Go to definition" },

    [",y"] = { '"+y<Return>', "Copy to clipboard" },
  },
}

-- more keybinds!

return M
