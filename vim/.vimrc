" stuff i don't understand :P

" let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
" let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

set nocompatible

" colemak rebindings
noremap n j
noremap e k
noremap i l
noremap k n

" colemak window movement
noremap <C-W><C-N> <C-W><C-J>
noremap <C-W><C-E> <C-W><C-K>
noremap <C-W><C-I> <C-W><C-L>

" resulting rebindings
noremap K N
noremap o i
noremap O I
noremap ' o
noremap " O
noremap \ "

" these keymaps have always been inconvenient
noremap <C-N> <C-E>
noremap <C-E> <C-Y>

" pure aesthetics
cabbrev h vert help

set splitright
set splitbelow

" set termguicolors
set cursorline

set autoindent
set smarttab
set expandtab

set scrolloff=2

" python stuff
set shiftwidth=4 softtabstop=4

" colorscheme mine

syntax on
