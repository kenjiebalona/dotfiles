vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- ===== Blackhole register for delete operations =====
-- d motions go to blackhole register, won't overwrite your yank
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set({ "n", "v" }, "D", '"_D')
vim.keymap.set({ "n", "v" }, "x", '"_x')
vim.keymap.set({ "n", "v" }, "X", '"_X')

local function telescope(picker)
    return function()
        require("telescope.builtin")[picker]()
    end
end

vim.keymap.set("n", "<leader>ff", telescope("find_files"))
vim.keymap.set("n", "<leader>fg", telescope("live_grep"))
vim.keymap.set("n", "<leader>fb", telescope("buffers"))
vim.keymap.set("n", "<leader>fh", telescope("help_tags"))
