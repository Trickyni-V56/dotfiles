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
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    { -- commentate/uncomment text blocks
        'numToStr/Comment.nvim',
    },
    { -- adds brackets around text object
        'nvim-mini/mini.surround', 
        version = false,
        require('mini.surround').setup()
    },
}
