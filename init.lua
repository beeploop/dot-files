require("dui")

require 'lspconfig'.jdtls.setup {
    cmd = { 'jdtls' },
    root_dir = function(fname)
        return require 'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
    end
}
--
-- vim.api.nvim_create_autocmd("VimEnter", {
--     callback = function()
--         vim.cmd("Copilot disable")
--     end,
-- })
