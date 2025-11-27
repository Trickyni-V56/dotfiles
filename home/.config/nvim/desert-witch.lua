local vim = vim
local M = {}
local p = {
  bg = "#3b3228", --background
  bg95 = "#43392d", --barely use! near-invisible, subtle highlighting
  bg75 = "#4c4134", --comments,
  bg25 = "#6b6055",
  altbg = "#5d4f40",
  sand = "#c1a387",
  fg = "#afd2e9",
  cyan = "#3eccbe",
  scarlet = "#e86045", --variables
  orange = "#e68d53", --integers
  saffron = "#f8e2a0", --selection
  moss = "#92a650",
  celadon = "#ace1af",
  grey = "#868686",
}

function M.colorscheme()
  -- vim.cmd("highlight clear")
  vim.o.background = "dark"

  vim.api.nvim_set_hl(0, "normal", { fg = p.fg, bg = p.bg })

  vim.api.nvim_set_hl(0, "MiniHiPatternsBase00", { bg = "#3b3228" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase01", { bg = "#4c4134" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase02", { bg = "#5d4f40" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase03", { bg = "#6b6055" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase04", { bg = "#c1a387" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase05", { bg = "#afd2e9" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase06", { bg = "#FF00FF" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase07", { bg = "#00FF00" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase08", { bg = "#e86045" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase09", { bg = "#e68d53" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase0A", { bg = "#f8e2a0" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase0B", { bg = "#92a650" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase0C", { bg = "#ace1af" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase0D", { bg = "#3eccbe" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase0E", { bg = "#FF0000" })
  vim.api.nvim_set_hl(0, "MiniHiPatternsBase0F", { bg = "#f8e2a0" })
  --
  -- vim.api.nvim_set_hl(0, "ComplMatchIns", {})
  -- vim.api.nvim_set_hl(0, "Conceal", {})
  -- vim.api.nvim_set_hl(0, "CurSearch", {})
  -- vim.api.nvim_set_hl(0, "Cursor", {})
  -- vim.api.nvim_set_hl(0, "CursorColumn", {})
  -- vim.api.nvim_set_hl(0, "CursorIM", {})
  vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg75 })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.sand })
  -- vim.api.nvim_set_hl(0, "CursorLineFold", {})
  vim.api.nvim_set_hl(0, "CursorLineSign", { bg = p.bg })
  vim.api.nvim_set_hl(0, "DiffAdd", { fg = p.moss })
  vim.api.nvim_set_hl(0, "DiffChange", { fg = p.orange })
  vim.api.nvim_set_hl(0, "DiffDelete", { fg = p.scarlet })
  -- vim.api.nvim_set_hl(0, "DiffText", {})
  -- vim.api.nvim_set_hl(0, "DiffTextAdd", {})
  -- vim.api.nvim_set_hl(0, "Directory", {})
  -- vim.api.nvim_set_hl(0, "EndOfBuffer", {})
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.scarlet })
  -- vim.api.nvim_set_hl(0, "FloatBorder", {})
  -- vim.api.nvim_set_hl(0, "FoldColumn", {})
  -- vim.api.nvim_set_hl(0, "Folded", {})
  -- vim.api.nvim_set_hl(0, "IncSearch", {})
  -- vim.api.nvim_set_hl(0, "lCursor", {})
  vim.api.nvim_set_hl(0, "LineNr", { bg = p.bg, fg = p.altbg })
  vim.api.nvim_set_hl(0, "LineNrAbove", { bg = p.bg, fg = p.altbg })
  vim.api.nvim_set_hl(0, "LineNrBelow", { bg = p.bg, fg = p.altbg })
  --
  -- -- Slight difference from base16, where `bg=base03` is used. This makes
  -- -- it possible to comfortably see this highlighting in comments.
  -- vim.api.nvim_set_hl(0, "MatchParen", {})
  -- vim.api.nvim_set_hl(0, "ModeMsg", {})
  -- vim.api.nvim_set_hl(0, "MoreMsg", {})
  -- vim.api.nvim_set_hl(0, "MsgArea", {})
  -- vim.api.nvim_set_hl(0, "MsgSeparator", {})
  -- vim.api.nvim_set_hl(0, "NonText", {})
  -- vim.api.nvim_set_hl(0, "Normal", {})
  -- vim.api.nvim_set_hl(0, "NormalFloat", {})
  -- vim.api.nvim_set_hl(0, "NormalNC", {})
  -- vim.api.nvim_set_hl(0, "OkMsg", {})
  -- vim.api.nvim_set_hl(0, "Pmenu", {})
  -- vim.api.nvim_set_hl(0, "PmenuExtra", {})
  -- vim.api.nvim_set_hl(0, "PmenuExtraSel", {})
  -- vim.api.nvim_set_hl(0, "PmenuKind", {})
  -- vim.api.nvim_set_hl(0, "PmenuKindSel", {})
  -- vim.api.nvim_set_hl(0, "PmenuMatch", {})
  -- vim.api.nvim_set_hl(0, "PmenuMatchSel", {})
  -- vim.api.nvim_set_hl(0, "PmenuSbar", {})
  -- vim.api.nvim_set_hl(0, "PmenuSel", {})
  -- vim.api.nvim_set_hl(0, "PmenuThumb", {})
  -- vim.api.nvim_set_hl(0, "Question", {})
  -- vim.api.nvim_set_hl(0, "QuickFixLine", {})
  -- vim.api.nvim_set_hl(0, "Search", {})
  vim.api.nvim_set_hl(0, "SignColumn", { bg = p.bg })
  -- vim.api.nvim_set_hl(0, "SpecialKey", {})
  -- vim.api.nvim_set_hl(0, "SpellBad", {})
  -- vim.api.nvim_set_hl(ight = highlight,0, "SpellCap", {})
  -- vim.api.nvim_set_hl(0, "SpellLocal", {})
  -- vim.api.nvim_set_hl(0, "SpellRare", {})
  -- vim.api.nvim_set_hl(0, "StatusLine", {})
  -- vim.api.nvim_set_hl(0, "StatusLineNC", {})
  -- vim.api.nvim_set_hl(0, "StderrMsg", {})
  -- vim.api.nvim_set_hl(0, "StdoutMsg", {})
  -- vim.api.nvim_set_hl(0, "Substitute", {})
  -- vim.api.nvim_set_hl(0, "TabLine", {})
  -- vim.api.nvim_set_hl(0, "TabLineFill", {})
  -- vim.api.nvim_set_hl(0, "TabLineSel", {})
  -- vim.api.nvim_set_hl(0, "TermCursor", {})
  -- vim.api.nvim_set_hl(0, "TermCursorNC", {})
  -- vim.api.nvim_set_hl(0, "Title", {})
  -- vim.api.nvim_set_hl(0, "VertSplit", {})
  -- vim.api.nvim_set_hl(0, "Visual", {})
  -- vim.api.nvim_set_hl(0, "VisualNOS", {})
  -- vim.api.nvim_set_hl(0, "WarningMsg", {})
  -- vim.api.nvim_set_hl(0, "Whitespace", {})
  -- vim.api.nvim_set_hl(0, "WildMenu", {})
  -- vim.api.nvim_set_hl(0, "WinBar", {})
  -- vim.api.nvim_set_hl(0, "WinBarNC", {})
  -- vim.api.nvim_set_hl(0, "WinSeparator", {})
  --
  -- -- Standard syntax (affects treesitter)
  vim.api.nvim_set_hl(0, "Boolean", { fg = p.orange })
  -- vim.api.nvim_set_hl(0, "Character", {})
  vim.api.nvim_set_hl(0, "Comment", { fg = p.bg25 })
  -- vim.api.nvim_set_hl(0, "Conditional", {})
  -- vim.api.nvim_set_hl(0, "Constant", {})
  -- vim.api.nvim_set_hl(0, "Debug", {})
  -- vim.api.nvim_set_hl(0, "Define", {})
  -- vim.api.nvim_set_hl(0, "Delimiter", {})
  -- vim.api.nvim_set_hl(0, "Error", {})
  -- vim.api.nvim_set_hl(0, "Exception", {})
  -- vim.api.nvim_set_hl(0, "Float", {})
  -- vim.api.nvim_set_hl(0, "Function", {})
  -- vim.api.nvim_set_hl(0, "Identifier", {})
  -- vim.api.nvim_set_hl(0, "Ignore", {})
  -- vim.api.nvim_set_hl(0, "Include", {})
  -- vim.api.nvim_set_hl(0, "Keyword", {})
  -- vim.api.nvim_set_hl(0, "Label", {})
  -- vim.api.nvim_set_hl(0, "Macro", {})
  -- vim.api.nvim_set_hl(0, "Number", {})
  -- vim.api.nvim_set_hl(0, "Operator", {})
  -- vim.api.nvim_set_hl(0, "PreCondit", {})
  -- vim.api.nvim_set_hl(0, "PreProc", {})
  -- vim.api.nvim_set_hl(0, "Repeat", {})
  -- vim.api.nvim_set_hl(0, "Special", {})
  -- vim.api.nvim_set_hl(0, "SpecialChar", {})
  -- vim.api.nvim_set_hl(0, "SpecialComment", {})
  -- vim.api.nvim_set_hl(0, "Statement", {})
  -- vim.api.nvim_set_hl(0, "StorageClass", {})
  vim.api.nvim_set_hl(0, "String", { fg = p.moss })
  -- vim.api.nvim_set_hl(0, "Structure", {})
  -- vim.api.nvim_set_hl(0, "Tag", {})
  -- vim.api.nvim_set_hl(0, "Todo", {})
  -- vim.api.nvim_set_hl(0, "Type", {})
  -- vim.api.nvim_set_hl(0, "Typedef", {})
  --
  -- -- Other from 'base16-vim'
  -- vim.api.nvim_set_hl(0, "Bold", {})
  -- vim.api.nvim_set_hl(0, "Italic", {})
  -- vim.api.nvim_set_hl(0, "TooLong", {})
  -- vim.api.nvim_set_hl(0, "Underlined", {})
  --
  -- -- Patch diff
  -- vim.api.nvim_set_hl(0, "diffAdded", {})
  -- vim.api.nvim_set_hl(0, "diffChanged", {})
  -- vim.api.nvim_set_hl(0, "diffFile", {})
  -- vim.api.nvim_set_hl(0, "diffLine", {})
  -- vim.api.nvim_set_hl(0, "diffRemoved", {})
  -- vim.api.nvim_set_hl(0, "Added", {})
  -- vim.api.nvim_set_hl(0, "Changed", {})
  -- vim.api.nvim_set_hl(0, "Removed", {})
  --
  -- -- Git commit
  -- vim.api.nvim_set_hl(0, "gitcommitBranch", {})
  -- vim.api.nvim_set_hl(0, "gitcommitComment", {})
  -- vim.api.nvim_set_hl(0, "gitcommitDiscarded", {})
  -- vim.api.nvim_set_hl(0, "gitcommitDiscardedFile", {})
  -- vim.api.nvim_set_hl(0, "gitcommitDiscardedType", {})
  -- vim.api.nvim_set_hl(0, "gitcommitHeader", {})
  -- vim.api.nvim_set_hl(0, "gitcommitOverflow", {})
  -- vim.api.nvim_set_hl(0, "gitcommitSelected", {})
  -- vim.api.nvim_set_hl(0, "gitcommitSelectedFile", {})
  -- vim.api.nvim_set_hl(0, "gitcommitSelectedType", {})
  -- vim.api.nvim_set_hl(0, "gitcommitSummary", {})
  -- vim.api.nvim_set_hl(0, "gitcommitUnmergedFile", {})
  -- vim.api.nvim_set_hl(0, "gitcommitUnmergedType", {})
  -- vim.api.nvim_set_hl(0, "gitcommitUntracked", {})
  -- vim.api.nvim_set_hl(0, "gitcommitUntrackedFile", {})
  --
  -- Built-in diagnostic
  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = p.scarlet })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = p.orange })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = p.celadon })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = p.moss })
  --
  -- vim.api.nvim_set_hl(0, "DiagnosticFloatingError", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticFloatingOk", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", {})
  --
  vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = p.bg, fg = p.scarlet })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = p.bg, fg = p.orange })
  vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = p.bg, fg = p.celadon })
  vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = p.bg, fg = p.cyan })
  vim.api.nvim_set_hl(0, "DiagnosticSignOk", { bg = p.bg, fg = p.moss })

  --
  -- vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", {})
  -- vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {})
  --
  -- -- Built-in LSP
  -- vim.api.nvim_set_hl(0, "LspReferenceText", {})
  -- vim.api.nvim_set_hl(0, "LspReferenceRead", {})
  -- vim.api.nvim_set_hl(0, "LspReferenceWrite", {})
  --
  -- vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {})
  --
  -- vim.api.nvim_set_hl(0, "LspCodeLens", {})
  -- vim.api.nvim_set_hl(0, "LspCodeLensSeparator", {})
  --
  -- -- Built-in snippets
  -- vim.api.nvim_set_hl(0, "SnippetTabstop", {})
  -- vim.api.nvim_set_hl(0, "SnippetTabstopActive", {})
  --
  -- -- Built-in markdown syntax
  -- vim.api.nvim_set_hl(0, "markdownH1", {})
  -- vim.api.nvim_set_hl(0, "markdownH2", {})
  -- vim.api.nvim_set_hl(0, "markdownH3", {})
  -- vim.api.nvim_set_hl(0, "markdownH4", {})
  -- vim.api.nvim_set_hl(0, "markdownH5", {})
  -- vim.api.nvim_set_hl(0, "markdownH6", {})
  --
  -- -- Tree-sitter
  -- -- Sources:
  -- -- - `:h treesitter-highlight-groups`
  -- -- - https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
  -- -- Included only those differing from default links
  -- vim.api.nvim_set_hl(0, "@keyword.return", {})
  -- vim.api.nvim_set_hl(0, "@symbol", {})
  -- vim.api.nvim_set_hl(0, "@variable", {})
  --
  -- vim.api.nvim_set_hl(0, "@text.strong", {})
  -- vim.api.nvim_set_hl(0, "@text.emphasis", {})
  -- vim.api.nvim_set_hl(0, "if@text.strike", {})
  -- vim.api.nvim_set_hl(0, "@text.underline", {})
  --
  -- -- Semantic tokens. Source: `:h lsp-semantic-highlight`.
  -- -- Included only those differing from default links
  -- vim.api.nvim_set_hl(0, "@lsp.type.variable", {})
  -- vim.api.nvim_set_hl(0, "@lsp.mod.deprecated", {})
  --
  -- -- New tree-sitter groups
  -- -- nvim-0.10
  -- -- Source: `:h treesitter-highlight-groups`
  -- -- Included only those differing from default links
  -- vim.api.nvim_set_hl(0, "@markup.strong", {})
  -- vim.api.nvim_set_hl(0, "@markup.italic", {})
  -- vim.api.nvim_set_hl(0, "@markup.strikethrough", {})
  -- vim.api.nvim_set_hl(0, "@markup.underline", {})
  --
  -- vim.api.nvim_set_hl(0, "@markup.heading.1", {})
  -- vim.api.nvim_set_hl(0, "@markup.heading.2", {})
  -- vim.api.nvim_set_hl(0, "@markup.heading.3", {})
  -- vim.api.nvim_set_hl(0, "@markup.heading.4", {})
  -- vim.api.nvim_set_hl(0, "@markup.heading.5", {})
  -- vim.api.nvim_set_hl(0, "@markup.heading.6", {})
  --
  -- vim.api.nvim_set_hl(0, "@string.special.vimdoc", {})
  -- vim.api.nvim_set_hl(0, "@variable.parameter.vimdoc", {})
  -- vim.api.nvim_set_hl(0, "@markup.heading.4.vimdoc", {})
  --
  -- vim.api.nvim_set_hl(0, "MiniDiffSignAdd", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffSignChange", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffSignDelete", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffOverAdd", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffOverChange", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffOverChangeBuf", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffOverContext", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffOverContextBuf", {})
  -- vim.api.nvim_set_hl(0, "MiniDiffOverDelete", {})
  --
  -- vim.api.nvim_set_hl(0, "MiniHipatternsFixme", {})
  -- vim.api.nvim_set_hl(0, "MiniHipatternsHack", {})
  -- vim.api.nvim_set_hl(0, "MiniHipatternsNote", {})
  -- vim.api.nvim_set_hl(0, "MiniHipatternsTodo", {})
  --
  -- vim.api.nvim_set_hl(0, "MiniSurround", {})
  --
  -- -- akinsho/bufferline.nvim
  -- vim.api.nvim_set_hl(0, "BufferLineBuffer", {})
  -- vim.api.nvim_set_hl(0, "BufferLineBufferSelected", {})
  -- vim.api.nvim_set_hl(0, "BufferLineBufferVisible", {})
  -- vim.api.nvim_set_hl(0, "BufferLineCloseButton", {})
  -- vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected", {})
  -- vim.api.nvim_set_hl(0, "BufferLineCloseButtonVisible", {})
  -- vim.api.nvim_set_hl(0, "BufferLineFill", {})
  -- vim.api.nvim_set_hl(0, "BufferLineTab", {})
  -- vim.api.nvim_set_hl(0, "BufferLineTabSelected", {})
  --
  -- -- folke/trouble.nvim
  -- vim.api.nvim_set_hl(0, "TroubleCount", {})
  -- vim.api.nvim_set_hl(0, "TroubleFoldIcon", {})
  -- vim.api.nvim_set_hl(0, "TroubleIndent", {})
  -- vim.api.nvim_set_hl(0, "TroubleLocation", {})
  -- vim.api.nvim_set_hl(0, "TroubleSignError", {})
  -- vim.api.nvim_set_hl(0, "TroubleSignHint", {})
  -- vim.api.nvim_set_hl(0, "TroubleSignInformation", {})
  -- vim.api.nvim_set_hl(0, "TroubleSignOther", {})
  -- vim.api.nvim_set_hl(0, "TroubleSignWarning", {})
  -- vim.api.nvim_set_hl(0, "TroubleText", {})
  -- vim.api.nvim_set_hl(0, "TroubleTextError", {})
  -- vim.api.nvim_set_hl(0, "TroubleTextHint", {})
  -- vim.api.nvim_set_hl(0, "TroubleTextInformation", {})
  -- vim.api.nvim_set_hl(0, "TroubleTextWarning", {})
  --
  -- folke/which-key.nvim
  vim.api.nvim_set_hl(0, "WhichKey", { fg = p.orange })
  vim.api.nvim_set_hl(0, "WhichKeyNormal", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = p.fg })
  vim.api.nvim_set_hl(0, "WhichKeyTitle", { bg = p.bg, fg = p.orange })
  vim.api.nvim_set_hl(0, "WhichKeySeparator", { bg = p.bg })
  vim.api.nvim_set_hl(0, "WhichKeyGroup", { bg = p.bg, fg = p.celadon })
  -- vim.api.nvim_set_hl(0, "WhichKeyValue", {})

  -- HiPhish/rainbow-delimiters.nvim'
  -- vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", {})
  -- vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", {})
  -- vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", {})
  vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#e86045" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#3eccbe" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#f8e2a0" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#c1a387" })
  --
  -- -- lewis6991/gitsigns.nvim
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = p.moss })
  -- vim.api.nvim_set_hl(0, "GitSignsAddLn", {})
  -- vim.api.nvim_set_hl(0, "GitSignsAddInline", {})

  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = p.orange })
  -- vim.api.nvim_set_hl(0, "GitSignsChangeLn", {})
  -- vim.api.nvim_set_hl(0, "GitSignsChangeInline", {})

  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = p.scarlet })
  -- vim.api.nvim_set_hl(0, "GitSignsDeleteLn", {})
  -- vim.api.nvim_set_hl(0, "GitSignsDeleteInline", {})

  -- vim.api.nvim_set_hl(0, "GitSignsUntracked", {})
  -- vim.api.nvim_set_hl(0, "GitSignsUntrackedLn", {})
  -- vim.api.nvim_set_hl(0, "GitSignsUntrackedInline", {})

  -- --TODO
  vim.api.nvim_set_hl(0, "RerMarkdownBullet", { fg = p.moss })
  -- vim.api.nvim_set_hl(0, "RerMarkdownBullet", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownChecked", {})
  vim.api.nvim_set_hl(0, "RerMarkdownCheckedItem", { fg = p.grey, strikethrough = true })
  -- vim.api.nvim_set_hl(0, "RerMarkdownCode", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownCodeInline", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownDash", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH1", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH1Bg", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH2", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH2Bg", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH3", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH3Bg", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH4", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH4Bg", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH5", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH5Bg", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH6", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownH6Bg", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownTodo", {})
  -- vim.api.nvim_set_hl(0, "RerMarkdownUnchecked", {})
  --
  -- -- OXY2DEV/helpview.nvim
  -- vim.api.nvim_set_hl(0, "HelpviewHeading1", {})
  -- vim.api.nvim_set_hl(0, "HelpviewHeading2", {})
  -- vim.api.nvim_set_hl(0, "HelpviewHeading3", {})
  -- vim.api.nvim_set_hl(0, "HelpviewHeading4", {})
  -- vim.api.nvim_set_hl(0, "HelpviewMentionlink", {})
  -- vim.api.nvim_set_hl(0, "HelpviewOptionlink", {})
  -- vim.api.nvim_set_hl(0, "HelpviewTaglink", {})
  -- vim.api.nvim_set_hl(0, "HelpviewTitle", {})
  --
  -- vim.api.nvim_set_hl(0, "MasonError", {})
  -- vim.api.nvim_set_hl(0, "MasonHeader", {})
  -- vim.api.nvim_set_hl(0, "MasonHeaderSecondary", {})
  -- vim.api.nvim_set_hl(0, "MasonHeading", {})
  -- vim.api.nvim_set_hl(0, "MasonHighlight", {})
  -- vim.api.nvim_set_hl(0, "MasonHighlightBlock", {})
  -- vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", {})
  -- vim.api.nvim_set_hl(0, "MasonHighlightBlockBoldSecondary", {})
  -- vim.api.nvim_set_hl(0, "MasonHighlightBlockSecondary", {})
  -- vim.api.nvim_set_hl(0, "MasonHighlightSecondary", {})
  -- vim.api.nvim_set_hl(0, "MasonLink", {})
  -- vim.api.nvim_set_hl(0, "MasonMuted", {})
  -- vim.api.nvim_set_hl(0, "MasonMutedBlock", {})
  -- vim.api.nvim_set_hl(0, "MasonMutedBlockBold", {})

  -- -- Terminal colors
  -- vim.g.terminal_color_0 = palette.base00
  -- vim.g.terminal_color_1 = palette.base08
  -- vim.g.terminal_color_2 = palette.base0B
  -- vim.g.terminal_color_3 = palette.base0A
  -- vim.g.terminal_color_4 = palette.base0D
  -- vim.g.terminal_color_5 = palette.base0E
  -- vim.g.terminal_color_6 = palette.base0C
  -- vim.g.terminal_color_7 = palette.base05
  -- vim.g.terminal_color_8 = palette.base03
  -- vim.g.terminal_color_9 = palette.base08
  -- vim.g.terminal_color_10 = palette.base0B
  -- vim.g.terminal_color_11 = palette.base0A
  -- vim.g.terminal_color_12 = palette.base0D
  -- vim.g.terminal_color_13 = palette.base0E
  -- vim.g.terminal_color_14 = palette.base0C
  -- vim.g.terminal_color_15 = palette.base07
end
return M
