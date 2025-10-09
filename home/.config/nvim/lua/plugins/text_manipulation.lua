-- "nguyenvukhang/nvim-toggler",
-- 'windwp/nvim-autopairs',
-- 'nvim-mini/mini.surround', 
-- 'numToStr/Comment.nvim',

return {
    { -- INFO: Inverts value (true -> false, etc.) 
      --       space-i to invert
        "nguyenvukhang/nvim-toggler",
        opts = {
            inverses = {
                ["- [ ]"] = "- [x]",
            },
        },
    },
    { -- INFO: Automatically match bracket pairs.
        'nvim-mini/mini.pairs',
        opts = {}
    },
    { -- INFO: Commentate/uncomment text blocks.
      --       g-c-c to comment/uncomment
        'numToStr/Comment.nvim',
    },
    { -- INFO: Adds brackets around text object. 
      --       s-a to add
      --       s-d to delete
      --       s-r to replace
        'nvim-mini/mini.surround', 
        opts = {},
    },
    {  
        'nvim-mini/mini.splitjoin',
        version = '*',
        opts= {},
    },
}
