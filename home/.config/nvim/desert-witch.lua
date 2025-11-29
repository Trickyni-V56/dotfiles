-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
-- https://neovim.io/doc/user/syntax.html#_8.-syntax-patterns
-- https://neovim.io/doc/user/syntax.html#_13.-highlight-command
local M = {}
--stylua: ignore start
   local bg      = "#3b3228" --background
   local bg95    = "#43392d" --barely use! near-invisible subtle highlighting
   local bg75    = "#4c4134" --comments
   local bg25    = "#6b6055"
   local altbg   = "#5d4f40"
   local sand    = "#c1a387"
   local fg      = "#afd2e9"
   local cyan    = "#3eccbe"
   local scarlet = "#e86045" --variables
   local orange  = "#e68d53" --integers
   local saffron = "#f8e2a0" --selection
   local moss    = "#92a650"
   local celadon = "#ace1af"
   local grey    = "#868686"
--stylua: ignore end
function M.setup()
  vim.cmd("highlight clear")
  vim.o.background = "dark"
  local hl_groups = {
    Normal = { fg = fg, bg = bg },
    Visual = { fg = bg, bg = saffron },

    MiniHiPatternsBase00 = { bg = "#3b3228" },
    MiniHiPatternsBase01 = { bg = "#4c4134" },
    MiniHiPatternsBase02 = { bg = "#5d4f40" },
    MiniHiPatternsBase03 = { bg = "#6b6055" },
    MiniHiPatternsBase04 = { bg = "#c1a387" },
    MiniHiPatternsBase05 = { bg = "#afd2e9" },
    MiniHiPatternsBase06 = { bg = "#FF00FF" },
    MiniHiPatternsBase07 = { bg = "#00FF00" },
    MiniHiPatternsBase08 = { bg = "#e86045" },
    MiniHiPatternsBase09 = { bg = "#e68d53" },
    MiniHiPatternsBase0A = { bg = "#f8e2a0" },
    MiniHiPatternsBase0B = { bg = "#92a650" },
    MiniHiPatternsBase0C = { bg = "#ace1af" },
    MiniHiPatternsBase0D = { bg = "#3eccbe" },
    MiniHiPatternsBase0E = { bg = "#FF0000" },
    MiniHiPatternsBase0F = { bg = "#f8e2a0" },
    ComplMatchIns = { bg = "#FF0000" },
    Conceal = { bg = "#FF0000" },
    CurSearch = { fg = bg, bg = orange },
    Cursor = { link = "Normal" },
    CursorColumn = { link = "CursorLine" },
    --  CursorIM       = {},
    CursorLine = { bg = bg75 },
    CursorLineNr = { fg = sand, bg = bg75 },
    CursorLineFold = { bg = "#FF0000" },
    CursorLineSign = { bg = bg75 },
    DiffAdd = { bg = moss, fg = bg },
    DiffChange = { bg = orange, fg = bg },
    DiffDelete = { bg = scarlet, fg = bg },
    DiffText = { fg = cyan },
    Directory = { fg = orange, underline = true },
    EndOfBuffer = { fg = sand, bg = bg },
    ErrorMsg = { fg = scarlet },
    WarnMsg = { fg = orange },
    OkMsg = { fg = moss },
    StderrMsg = { fg = scarlet },
    StdoutMsg = { fg = fg },
    FloatBorder = { fg = sand, bg = bg },
    --  FoldColumn     = {},
    --  Folded         = {},
    IncSearch = { link = "Visual" },
    --  lCursor        = {},
    LineNr = { bg = bg, fg = altbg },
    LineNrAbove = { bg = bg, fg = altbg },
    LineNrBelow = { bg = bg, fg = altbg },
    MatchParen = { bg = bg25, fg = celadon },
    ModeMsg = { fg = saffron },
    MoreMsg = { fg = orange },
    MsgArea = { link = "Normal" },
    MsgSeparator = { fg = fg, bg = altbg },
    NonText = { fg = altbg },
    NormalFloat = { link = "Normal" },
    NormalNC = { fg = sand, bg = bg },
    --Popup-Menu----------------------------------------
    -- Pmenu = {},
    -- PmenuExtra = {},
    -- PmenuExtraSel = {},
    -- PmenuKind = {},
    -- PmenuKindSel = {},
    -- PmenuMatch = {},
    -- PmenuMatchSel = {},
    -- PmenuSbar = {},
    -- PmenuSel = {},
    -- PmenuThumb = {},
    -- ------------------------------------------
    Question = { fg = orange },
    QuickFixLine = { link = "MsgSeparator" },
    Search = { link = "Visual" },
    SignColumn = { bg = bg },
    SpecialKey = { fg = sand },
    SpellBad = { undercurl = true, sp = scarlet },
    SpellCap = { undercurl = true, sp = cyan },
    StatusLine = { bg = altbg, fg = fg },
    StatusLineNC = { bg = altbg, fg = sand },
    Substitute = { link = "Visual" },
    --  TabLine        = {},
    --  TabLineFill    = {},
    --  TabLineSel     = {},
    --  TermCursor     = {},
    --  TermCursorNC   = {},
    --  Title          = {},
    --  VertSplit      = {},
    VisualNOS = { bg = scarlet, fg = bg },
    --  WarningMsg     = {},
    --  Whitespace     = {},
    --  WildMenu       = {},
    --  WinBar         = {},
    --  WinBarNC       = {},
    --  WinSeparator   = {},

    --Syntax -----------------------------------
    Comment = { fg = bg25 },
    Constant = { fg = fg },
    String = { fg = orange },
    -- Character       = {},
    Number = { fg = moss },
    Boolean = { link = "Number" },
    Float = { link = "Number" },
    Identifier = { fg = fg },
    Function = { fg = fg },
    -- Statement = { fg = sand },
    -- Conditional = { fg = scarlet },
    -- Repeat          = {},
    -- Label = { fg = fg },
    Operator = { fg = fg },
    --  Keyword        = {},
    --  Exception      = {},
    -- PreProc         = {},
    --  Include        = {},
    --  Define         = {},
    --  Macro          = {},
    -- PreCondit       = {},
    -- Type            = {},
    -- StorageClass    = {},
    --  Structure      = {},
    -- Typedef         = {},
    Special = { fg = celadon },
    -- SpecialChar     = {  },
    Tag = { fg = orange },
    -- Delimiter       = {},
    --  SpecialComment = {},
    --  Debug          = {},
    --  Ignore         = {},
    --  Error          = {},
    --  Todo           = {},
    --treesitter--------------------------------------
    ["@variable"] = { link = "Identifier" },
    --["@variable.builtin"]={},
    --["@variable.parameter"]={},
    --["@variable.parameter.builtin"]={},
    --["@variable.member"]={},
    ["@constant"] = { link = "Constant" },
    --["@constant"]={},
    --["@constant.builtin"]={},
    --["@constant.macro"]={},
    --["@module"]={},
    --["@module.builtin"]={},
    --["@label"]={},
    ["@string"] = { link = "String" },
    --["@string.documentation"]={},
    --["@string.regexp"]={},
    --["@string.escape"]={},
    --["@string.special"]={},
    --["@string.special.symbol"]={},
    --["@string.special.url"]={},
    --["@string.special.path"]={},
    --["@character"]={},
    --["@character.special"]={},
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    --["@type"]={},
    --["@type.builtin"]={},
    --["@type.definition"]={},
    --["@attribute"]={},
    --["@attribute.builtin"]={},
    --["@property"]={},
    ["@function"] = { link = "Function" },
    --["@function.builtin"]={},
    --["@function.call"]={},
    --["@function.macro"]={},
    --["@function.method"]={},
    --["@function.method.call"]={},
    --["@constructor"]={},
    --["@operator"]={},
    --["@keyword"]={},
    --["@keyword.coroutine"]={},
    --["@keyword.function"]={},
    --["@keyword.operator"]={},
    --["@keyword.import"]={},
    --["@keyword.type"]={},
    --["@keyword.modifier"]={},
    --["@keyword.repeat"]={},
    --["@keyword.return"]={},
    --["@keyword.debug"]={},
    --["@keyword.exception"]={},
    ["@keyword.conditional"] = { fg = sand },
    ["@keyword.conditional.ternary"] = { fg = sand },
    --["@keyword.directive"]={},
    --["@keyword.directive.define"]={},
    ["@punctuation.delimiter"] = { fg = fg },
    -- ["@punctuation.bracket"]={},
    -- ["@punctuation.special"]={},
    ["@comment"] = { link = "Comment" },
    -- ["@comment.documentation"] = {},
    ["@comment.error"] = { bg = scarlet, fg = bg }, -- error-type comments (e.g.moss`ERROR`, `FIXME`, `DEPRECATED`)
    ["@comment.warning"] = { bg = orange, fg = bg }, -- warning-type comments (e.g.moss`WARNING`, `FIX`, `HACK`)
    ["@comment.todo"] = { bg = saffron, fg = bg }, -- todo-type comments (e.g.moss`TODO`, `WIP`)
    ["@comment.note"] = { bg = scarlet, fg = bg }, -- note-type comments (e.g.moss`NOTE`, `INFO`, `XXX`)
    ["@diff.plus"] = { link = "Added" },
    ["@diff.minus"] = { link = "Removed" },
    ["@diff.delta"] = { link = "Changed" },
    ["@tag"] = { link = "Tag" },
    --["@tag.builtin"]={},
    --["@tag.attribute"]={},
    --["@tag.delimiter"]={},
    --Diff--------------------------------------------
    Added = { fg = moss },
    Changed = { fg = orange },
    Removed = { fg = scarlet },
    --
    -- -- Git commit
    --  gitcommitBranch         = {},
    --  gitcommitComment        = {},
    --  gitcommitDiscarded      = {},
    --  gitcommitDiscardedFile  = {},
    --  gitcommitDiscardedType  = {},
    --  gitcommitHeader         = {},
    --  gitcommitOverflow       = {},
    --  gitcommitSelected       = {},
    --  gitcommitSelectedFile   = {},
    --  gitcommitSelectedType   = {},
    --  gitcommitSummary        = {},
    --  gitcommitUnmergedFile   = {},
    --  gitcommitUnmergedType   = {},
    --  gitcommitUntracked      = {},
    --  gitcommitUntrackedFile  = {},

    --Diagnostics----------------------------------------
    DiagnosticError = { fg = scarlet },
    DiagnosticWarn = { fg = orange },
    DiagnosticInfo = { fg = celadon },
    DiagnosticHint = { fg = cyan },
    DiagnosticOk = { fg = moss },

    -- DiagnosticFloatingError = {},
    -- DiagnosticFloatingHint = {},
    -- DiagnosticFloatingInfo = {},
    -- DiagnosticFloatingOk = {},
    -- DiagnosticFloatingWarn = {},

    DiagnosticSignError = { bg = bg, fg = scarlet },
    DiagnosticSignWarn = { bg = bg, fg = orange },
    DiagnosticSignInfo = { bg = bg, fg = celadon },
    DiagnosticSignHint = { bg = bg, fg = cyan },
    DiagnosticSignOk = { bg = bg, fg = moss },

    DiagnosticUnderlineError = { bg = nil, fg = nil, underdotted = true, sp = scarlet },
    DiagnosticUnderlineWarn = { bg = nil, fg = nil, underdouble = true, sp = orange },
    DiagnosticUnderlineInfo = { bg = nil, fg = nil, underline = true, sp = celadon },
    DiagnosticUnderlineHint = { bg = nil, fg = nil, underdashed = true, sp = cyan },
    DiagnosticUnderlineOk = { bg = nil, fg = nil, underline = true, sp = moss },
    --LSP------------------------------------------------
    --  LspReferenceText              = {},
    --  LspReferenceRead              = {},
    --  LspReferenceWrite             = {},
    --
    --  LspSignatureActiveParameter   = {},
    --
    --  LspCodeLens                   = {},
    --  LspCodeLensSeparator          = {},
    --
    -- -- Built-in snippets
    --  SnippetTabstop                = {},
    --  SnippetTabstopActive          = {},
    --
    -- -- Built-in markdown syntax
    --  markdownH1                    = {},
    --  markdownH2                    = {},
    --  markdownH3                    = {},
    --  markdownH4                    = {},
    --  markdownH5                    = {},
    --  markdownH6                    = {},
    --
    --
    --  MiniDiffSignAdd               = {},
    --  MiniDiffSignChange            = {},
    --  MiniDiffSignDelete            = {},
    --  MiniDiffOverAdd               = {},
    --  MiniDiffOverChange            = {},
    --  MiniDiffOverChangeBuf         = {},
    --  MiniDiffOverContext           = {},
    --  MiniDiffOverContextBuf        = {},
    --  MiniDiffOverDelete            = {},
    --
    --
    MiniHipatternsFixme = { bg = scarlet, fg = bg },
    MiniHipatternsHack = { bg = orange, fg = bg },
    MiniHipatternsNote = { bg = cyan, fg = bg },
    MiniHipatternsTodo = { bg = saffron, fg = bg },
    --
    --  MiniSurround                  = {},
    --
    -- -- akinsho/bufferline.nvim
    --  BufferLineBuffer              = {},
    --  BufferLineBufferSelected      = {},
    --  BufferLineBufferVisible       = {},
    --  BufferLineCloseButton         = {},
    --  BufferLineCloseButtonSelected = {},
    --  BufferLineCloseButtonVisible  = {},
    --  BufferLineFill                = {},
    --  BufferLineTab                 = {},
    --  BufferLineTabSelected         = {},
    --
    -- -- folke/trouble.nvim
    --  TroubleCount                  = {},
    --  TroubleFoldIcon               = {},
    --  TroubleIndent                 = {},
    --  TroubleLocation               = {},
    --  TroubleSignError              = {},
    --  TroubleSignHint               = {},
    --  TroubleSignInformation        = {},
    --  TroubleSignOther              = {},
    --  TroubleSignWarning            = {},
    --  TroubleText                   = {},
    --  TroubleTextError              = {},
    --  TroubleTextHint               = {},
    --  TroubleTextInformation        = {},
    --  TroubleTextWarning            = {},
    ---folke/which-key.nvim--------------------------------------
    WhichKey = { fg = orange },
    WhichKeyNormal = { fg = fg, bg = bg },
    WhichKeyBorder = { link = "FloatBorder" },
    WhichKeyDesc = { fg = fg },
    WhichKeyTitle = { bg = bg, fg = orange },
    WhichKeySeparator = { fg = sand, bg = bg },
    WhichKeyGroup = { bg = bg, fg = celadon },
    --HiPhish/rainbow-delimiters.nvim----------------------------
    RainbowDelimiterBlue = {},
    RainbowDelimiterGreen = {},
    RainbowDelimiterOrange = {},
    RainbowDelimiterRed = { fg = scarlet },
    RainbowDelimiterCyan = { fg = cyan },
    RainbowDelimiterYellow = { fg = saffron },
    RainbowDelimiterViolet = { fg = sand },
    --lewis6991/gitsigns.nvim-------------------------------------
    GitSignsAdd = { link = "Added" },
    --  GitSignsAddLn                  = {},
    --  GitSignsAddInline              = {},

    GitSignsChange = { link = "Changed" },
    --  GitSignsChangeLn               = {},
    --  GitSignsChangeInline           = {},

    GitSignsDelete = { link = "Removed" },
    --  GitSignsDeleteLn               = {},
    --  GitSignsDeleteInline           = {},

    --  GitSignsUntracked              = {},
    --  GitSignsUntrackedLn            = {},
    --  GitSignsUntrackedInline        = {},
    --RenderMarkdown----------------------------------------------
    RerMarkdownBullet = { fg = moss },
    --  RerMarkdownBullet              = {},
    --  RerMarkdownChecked             = {},
    RerMarkdownCheckedItem = { fg = grey, strikethrough = true },
    --  RerMarkdownCode                = {},
    --  RerMarkdownCodeInline          = {},
    --  RerMarkdownDash                = {},
    --  RerMarkdownH1                  = {},
    --  RerMarkdownH1Bg                = {},
    --  RerMarkdownH2                  = {},
    --  RerMarkdownH2Bg                = {},
    --  RerMarkdownH3                  = {},
    --  RerMarkdownH3Bg                = {},
    --  RerMarkdownH4                  = {},
    --  RerMarkdownH4Bg                = {},
    --  RerMarkdownH5                  = {},
    --  RerMarkdownH5Bg                = {},
    --  RerMarkdownH6                  = {},
    --  RerMarkdownH6Bg                = {},
    --  RerMarkdownTodo                = {},
    --  RerMarkdownUnchecked           = {},
    --OXY2DEV/helpview.nvim---------------------------------------
    --  HelpviewHeading1               = {},
    --  HelpviewHeading2               = {},
    --  HelpviewHeading3               = {},
    --  HelpviewHeading4               = {},
    --  HelpviewMentionlink            = {},
    --  HelpviewOptionlink             = {},
    --  HelpviewTaglink                = {},
    --  HelpviewTitle                  = {},
    --

    -- MasonBackdrop                   = { bg   = bg },
    -- MasonError                      = { fg   = scarlet },
    -- MasonHeader                     = { fg   = bg, bg              = cyan },
    -- MasonHeaderSecondary            = { fg   = bg, bg              = cyan },
    -- MasonHeading                    = {},
    -- MasonHighlight                  = {},
    -- MasonHighlightBlock             = {},
    -- MasonHighlightBlockBold         = {},
    -- MasonHighlightBlockBoldSecondary= {},
    -- MasonHighlightBlockSecondary    = {},
    -- MasonHighlightSecondary         = {},
    -- MasonLink                       = {},
    -- MasonMuted                      = {},
    -- MasonMutedBlock                 = {},
    -- MasonMutedBlockBold             = {},
    --stylua: ignore end
  }

  -- hi('MasonHighlight',                   {fg=base0F
  -- hi('MasonHighlightBlock',              {fg=base00, bg=base0F,
  -- hi('MasonHighlightBlockBold',          {link='MasonHeaderSecondary
  -- hi('MasonHighlightBlockBoldSecondary', {link='MasonHeader'},)
  -- hi('MasonHighlightBlockSecondary',     {fg=base00, bg=base0D,
  -- hi('MasonHighlightSecondary',          {fg=base0D,
  -- hi('MasonLink',                        {link='MasonHighlight'},)
  -- hi('MasonMuted',                       {link='Comment'},)
  -- hi('MasonMutedBlock',                  {fg=base00, bg=base03,
  -- hi('MasonMutedBlockBold',              {fg=base00, bg=base03,
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
  for name, hl in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end
return M
