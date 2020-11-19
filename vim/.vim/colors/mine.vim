if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "mine"

highlight CursorLine cterm=none term=none guibg=#111144
highlight Visual cterm=none term=none guibg=#441116
highlight Normal guibg=#00001A
highlight NormalNC guibg=#000010
highlight Pmenu guibg=#222244
highlight Constant guifg=#ff3344
highlight Identifier guifg=#309eff
highlight Operator guifg=#ff8630
highlight Special guifg=#ccee33
highlight Type gui=NONE guifg=#11dd22
highlight StorageClass guifg=#44ee66
highlight link Structure StorageClass
highlight Statement gui=NONE guifg=#ffff26
highlight PreProc guifg=#ee66ff
highlight link Title PreProc 
highlight Comment guifg=#6f6f6f
highlight MatchParen guifg=#333377

highlight link rustLifetime rustStorage
