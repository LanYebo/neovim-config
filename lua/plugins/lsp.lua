return {
  -- my custom keymaps for lsp
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "K", false }, -- 禁用 LSP 默认的 K -> hover
          { "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "LSP Hover", has = "hover" },
        },
      },
    },
  },
}
