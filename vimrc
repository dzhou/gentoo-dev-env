
set nocompatible  
set background=dark
set bs=2            " backspacing over everything in insert mode
set ai              " Auto indenting
set showmatch       " show () {} and [] matches while writing
set history=100     " keep 100 lines of history
set ruler           " show the cursor position
syntax on           " syntax highlighting
set number
filetype on
filetype plugin indent on
set tw=76
"set foldmethod=indent
set autochdir

set tabpagemax=15 
set showtabline=2 
set noerrorbells
set nocompatible
set si
set cindent
set mouse=r     "copy/paste with right btn
set nowrap
set incsearch
set showmatch
set mat=5
set wrap
"set hls
"set cul
"set wrapscan
"set sol

"PEP8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab
set smartindent
set shiftwidth=4

:highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

"syntax
"hi Comment ctermfg=green
"hi PreProc ctermfg=magenta cterm=bold ctermfg
"hi Comment ctermfg=green cterm=bold

colorscheme koehler

"Key Mapping
nnoremap <F2> :w <ENTER>
nnoremap <silent> <c-l> :TlistToggle <ENTER>
nnoremap <silent> <c-d> :NERDTreeToggle <ENTER>
nnoremap <silent> <c-k> :TlistOpen <ENTER>
"let Tlist_Auto_Open = 1
"let Tlist_Use_SingleClick=1

"SmartHome Function
"home key jump btw start and first char 
function! SmartHome()
  let s:col = col(".")
  normal! ^
  if s:col == col(".")
    normal! 0
  endif
endfunction

nnoremap <silent> <Home> :call SmartHome()<CR>
inoremap <silent> <Home> <C-O>:call SmartHome()<CR>


au BufEnter *.hs compiler ghci

"Change tab size=2 for C/C++ (official formatting of boost)
autocmd BufNewFile,BufRead *.hpp exe "set sw=2"
autocmd BufNewFile,BufRead *.cpp exe "set sw=2"
autocmd BufNewFile,BufRead *.h exe "set sw=2"




