return {
    {
        "nvim-treesitter/nvim-treesitter-context",
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        opts = {
            ensure_installed = { "vimdoc", "javascript", "typescript", "php", "c", "cpp", "lua", "rust", "python", "java", "go" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        },
    }
}
