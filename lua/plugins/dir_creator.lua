return {
    "beeploop/dir-creator.nvim",
    config = function() 
        local builtin = require("dir-creator")
        vim.keymap.set("n", "<leader>md", function()
            builtin.create_dir()
        end)
    end
}
