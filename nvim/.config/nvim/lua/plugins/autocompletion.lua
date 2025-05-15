-- ~/.config/nvim/plugins/autocompletion.lua
--
-- Author: Ole Willers

return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',     -- LSP Completion Source
            'hrsh7th/cmp-buffer',       -- Puffer-basiertes Autocompletion
            'hrsh7th/cmp-path',         -- Pfad-basierte Autocompletion
        },
        enable = false,
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                mapping = {
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.close(),

                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<Down>'] = cmp.mapping.select_next_item(),

                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item(),

                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'path' },
                },
            })
        end,
    },
}
