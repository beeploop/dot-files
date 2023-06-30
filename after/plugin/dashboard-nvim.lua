require("dashboard").setup({
    theme = "doom",
    config = {
        center = {
            {
                icon = '  ',
                desc = 'Find File',
                desc_hl = 'String',
                key = 'SPC f f',
                key_hl = 'Number',
                action = 'lua print(2)'
            },
            {
                icon = '  ',
                desc = 'Find Word (Grep)',
                desc_hl = 'String',
                key = 'SPC f g',
                key_hl = 'Number',
                action = 'lua print(8)'
            },
            {
                icon = '  ',
                desc = 'Open File Tree',
                desc_hl = 'String',
                key = 'SPC e e',
                key_hl = 'Number',
                action = 'lua print(10)'
            },
        }
    }
})
