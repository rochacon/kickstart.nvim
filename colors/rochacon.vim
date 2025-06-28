" Only syntax highlight: comments and strings

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "rochacon"

" Baseline
hi Normal term=NONE cterm=NONE ctermfg=253 ctermbg=NONE gui=NONE guifg=#eeeeee guibg=#313131

" Editor
hi ColorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=235 gui=NONE guifg=NONE guibg=#292929
hi Comment term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=#6B6B6B guibg=#313131
hi Cursor term=NONE cterm=NONE ctermfg=black ctermbg=4 gui=NONE guifg=black guibg=#00FFFF
hi CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=black gui=NONE guifg=NONE guibg=black
hi CursorIM term=NONE cterm=NONE ctermfg=black ctermbg=4 gui=NONE guifg=black guibg=#00FFFF
hi CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=black
hi CursorLineNr term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=black
hi Directory term=NONE cterm=NONE ctermfg=69 ctermbg=NONE gui=NONE guifg=#5F87FF guibg=NONE
hi Error term=NONE cterm=NONE ctermfg=fg ctermbg=52 gui=NONE guifg=fg guibg=#5F0000
hi ErrorMsg term=NONE cterm=NONE ctermfg=fg ctermbg=52 gui=NONE guifg=fg guibg=#5F0000
hi FoldColumn term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=#6C6C6C guibg=NONE
hi Folded term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=#6C6C6C guibg=NONE
hi IncSearch term=NONE cterm=NONE ctermfg=black ctermbg=green gui=NONE guifg=black guibg=green
hi LineNr term=NONE cterm=NONE ctermfg=235 ctermbg=NONE gui=NONE guifg=#808080 guibg=NONE
hi MatchParen term=NONE cterm=NONE ctermfg=white ctermbg=244 gui=NONE guifg=#ffffff guibg=#000080
hi Menu term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi ModeMsg term=NONE cterm=NONE ctermfg=69 ctermbg=NONE gui=NONE guifg=#5F87FF guibg=NONE
hi MoreMsg term=NONE cterm=NONE ctermfg=69 ctermbg=NONE gui=NONE guifg=#5F87FF guibg=NONE
hi NonText term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=#6C6C6C guibg=NONE
hi PmenuSel term=NONE cterm=NONE ctermfg=black ctermbg=13 gui=NONE guifg=black guibg=#FF00FF
hi Question term=NONE cterm=NONE ctermfg=69 ctermbg=NONE gui=NONE guifg=#5F87FF guibg=NONE
hi Scrollbar term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Search term=NONE cterm=NONE ctermfg=black ctermbg=6 gui=NONE guifg=black guibg=#00CDCD
hi SignColumn term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=#6C6C6C guibg=NONE
hi SpecialKey term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=#6C6C6C guibg=NONE
hi StatusLine term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=fg guibg=#666666
hi StatusLineNC term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=black guibg=#666666
hi TabLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=black guibg=#666666
hi TabLineFill term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi TabLineSel term=NONE cterm=reverse ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Todo term=NONE cterm=NONE ctermfg=10 ctermbg=NONE gui=NONE guifg=#00FF00 guibg=black
hi Tooltip term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi VertSplit term=NONE cterm=NONE ctermfg=black ctermbg=242 gui=NONE guifg=black guibg=#6C6C6C
hi VisualNOS term=NONE cterm=NONE ctermfg=NONE ctermbg=69 gui=NONE guifg=NONE guibg=#5F87FF
hi WarningMsg term=NONE cterm=NONE ctermfg=fg ctermbg=52 gui=NONE guifg=fg guibg=#5F0000

hi PmenuSbar term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi Pmenu term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi PmenuThumb term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi Visual term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi WildMenu term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE

" Diff
hi DiffAdd term=NONE cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#008000 guibg=NONE
hi DiffChange term=NONE cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#808000 guibg=NONE
hi DiffDelete term=NONE cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#800000 guibg=NONE
hi DiffText term=NONE cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#000080 guibg=NONE

" Spell
hi SpellBad term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=underline guifg=#FF00FF guibg=NONE
hi SpellCap term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=underline guifg=#FF00FF guibg=NONE
hi SpellLocal term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=underline guifg=#FF00FF guibg=NONE
hi SpellRare term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=underline guifg=#FF00FF guibg=NONE

" Syntax Highlighting (or lack of)
hi Boolean term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conceal term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conditional term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Constant term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Debug term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Define term=NONE cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
hi Delimiter term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Directive term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Exception term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Float term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Format term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Function term=NONE cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
hi Identifier term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Ignore term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Include term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Keyword term=NONE cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
hi Label term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Macro term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Number term=NONE cterm=NONE ctermfg=242 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Operator term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreCondit term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreProc term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Repeat term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialChar term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialComment term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Special term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Statement term=NONE cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
hi StorageClass term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi String term=NONE cterm=NONE ctermfg=247 ctermbg=NONE gui=NONE guifg=#b6bfbf guibg=NONE
hi Structure term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tag term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Title term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Typedef term=NONE cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
hi Type term=NONE cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
hi Underlined term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Sneak
hi SneakPluginScope term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SneakStreakMask term=NONE cterm=NONE ctermfg=black ctermbg=darkgreen gui=NONE guifg=black guibg=darkgreen
hi SneakStreakStatusLine term=NONE cterm=NONE ctermfg=black ctermbg=darkgreen gui=NONE guifg=black guibg=darkgreen
hi SneakStreakTarget term=NONE cterm=NONE ctermfg=black ctermbg=green gui=NONE guifg=black guibg=green

" MiniStatusline
hi MiniStatuslineModeNormal term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=fg guibg=#666666
hi MiniStatuslineModeInsert term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=fg guibg=#666666
hi MiniStatuslineModeVisual term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=fg guibg=#666666
hi MiniStatuslineModeReplace term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=fg guibg=#666666
hi MiniStatuslineModeCommand term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=fg guibg=#666666
hi MiniStatuslineModeOther term=NONE cterm=NONE ctermfg=black ctermbg=fg gui=NONE guifg=fg guibg=#666666
