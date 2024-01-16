---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- Compile and view the PDF
    ["<leader>aa"] = {":VimtexCompile<CR>"},
    ["<leader>av"] = {":VimtexView<CR>"},
    ["<leader>as"] = {":VimtexStop<CR>"},
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
