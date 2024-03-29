local builtin = require("dir-creator")

vim.keymap.set("n", "<leader>md", function()
    builtin.create_dir()
end)
