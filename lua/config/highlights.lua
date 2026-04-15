-- Transparência global + ajustes finos
local M = {}

M.setup = function()
  local groups = {
    -- Base
    "Normal",
    "NormalFloat",
    "SignColumn",
    "EndOfBuffer",
    --"CursorLine",
    "CursorColumn",

    -- Line number
    "LineNr",
    --"CursorLineNr",

    -- Status / split
    "StatusLine",
    "StatusLineNC",
    "VertSplit",
    "WinSeparator",

    -- Popup / menus
    "Pmenu",
    "PmenuSel",
    "PmenuSbar",
    "PmenuThumb",

    -- Telescope
    "TelescopeNormal",
    "TelescopeBorder",
    "TelescopePromptNormal",
    "TelescopeResultsNormal",
    "TelescopePreviewNormal",

    -- NvimTree / Neo-tree
    "NvimTreeNormal",
    "NvimTreeNormalNC",
    "NeoTreeNormal",
    "NeoTreeNormalNC",

    -- CMP
    "CmpNormal",

    -- LSP
    "FloatBorder",
    "NormalNC",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end

  -- TreeSitter (reforço)
  local ts_groups = {
    "@variable",
    "@function",
    "@keyword",
    "@string",
    "@type",
    "@comment",
  }

  for _, group in ipairs(ts_groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end

  -- Transparência leve em menus (opcional)
  vim.opt.pumblend = 10
  vim.opt.winblend = 10
end

return M
