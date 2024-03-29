local builtin = require("dirCreator")

vim.keymap.set("n", "<leader>md", function()
    builtin.create_dir()
end)
