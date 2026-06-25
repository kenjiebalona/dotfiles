-- ===== Plugins =====
vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" }, -- LSP server definitions
    { src = "https://github.com/mason-org/mason.nvim" },  -- installs LSP binaries
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/nvim-mini/mini.completion" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/stevearc/quicker.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/EdenEast/nightfox.nvim" },
})

require('mini.completion').setup {}
require('quicker').setup {}
require('gitsigns').setup {}
require('fzf-lua').setup { fzf_colors = true }
require('nvim-autopairs').setup {
    check_ts = false, -- no treesitter dependency
    disable_filetype = { "TelescopePrompt" },
    fast_wrap = {
        map = "<M-e>", -- Alt+e to wrap selection with a pair
    },
}
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer", "gopls", "clangd", "ts_ls", "eslint", "lua_ls" },
    -- this auto-calls vim.lsp.enable() for whatever's installed
})
require("nightfox").setup {}
vim.cmd("colorscheme carbonfox")
