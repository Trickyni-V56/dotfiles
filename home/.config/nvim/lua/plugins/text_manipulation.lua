-- "nguyenvukhang/nvim-toggler",
-- 'windwp/nvim-autopairs',
-- 'nvim-mini/mini.surround', 
-- 'numToStr/Comment.nvim',

return {
    { -- inverts value (true -> false, etc.)
        "nguyenvukhang/nvim-toggler",
        opts = {
            inverses = {
                ["- [ ]"] = "- [x]",
            },
        },
    },
    { -- automatically match bracket pairs
        'nvim-mini/mini.pairs',
        opts = {}
    },
    { -- commentate/uncomment text blocks
        'numToStr/Comment.nvim',
    },
    { -- adds brackets around text object
        'nvim-mini/mini.surround', 
        opts = {}
    },
}
