return {
  -- my custom keymaps for lsp
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable default key
      keys[#keys + 1] = { "K", false }
      -- cuttom my own keymaps
      keys[#keys + 1] = { "K", "5k", desc = "quick move up 5 lines" }
      keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "lsp hover" }
    end,
  },
}
