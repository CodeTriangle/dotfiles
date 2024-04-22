" VIM PLUG STUFF
" VIM PLUG STUFF
call plug#begin()
Plug 'gaving/vim-textobj-argument'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luizribeiro/vim-cooklang', { 'for': 'cook' }
Plug 'udalov/kotlin-vim'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tikhomirov/vim-glsl'

call plug#end()
" END VIM PLUG STUFF
" END VIM PLUG STUFF

set ts=4 sw=4

augroup vimrc
        autocmd BufNewFile,BufRead *.js set sw=2
        autocmd BufNewFile,BufRead *.java set sw=4
augroup END
set encoding=utf-8

set updatetime=300

set signcolumn=number

cabbrev h vert help

set splitright
set splitbelow

set laststatus=2

set number
hi LineNr ctermfg=6

set incsearch

set autoindent
set smarttab

set scrolloff=2

set backspace=3

set mouse=

set backupdir=~/.cache/vim/backup,/tmp
set directory=~/.cache/vim/swap,/tmp

set undofile

let mapleader = ","

" why does nvim not use the default 8 colors?
" colorscheme peachpuff

nmap <leader>n :bn<CR>
nmap <leader>N :bN<CR>

syntax on
" Use `[g` and `]g` to navigate diagnostics
"
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
