return {
  {
    "aiken-lang/editor-integration-nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.aiken.setup({})

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.ak",
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end,
  },
}
