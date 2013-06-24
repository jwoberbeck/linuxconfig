"This is my .vimrc file... trying to fix settings here
syntax on "syntax highlighting on
""This stuff is for solarized colors
syntax enable
    colorscheme solarized
    color solarized
    set background=dark
    set t_Co=256
    "let g:solarized_termcolors = 256
filetype plugin indent on "load filetype plugin/indent settings

"Text formatting:
set expandtab "no real tabs

set shiftround "when at 3 spaces, and I hit > ... go to 4, not 5

set shiftwidth=4 "auto-indent amount

set softtabstop=4 "how many spaces a tab is

set tabstop=8 "'real' tabs are 8 spaces

"make arrow keys useful
map <down> <ESC>:bn<RETURN>

map <up> <ESC>:bp<RETURN>

"General
set backup "make backup files
set backupdir=~/.vim/backup "where to put backup files
set mouse=a "use mouse everywhere

"VIM UI
set incsearch  "BUT do highlight as you type search phrase

set number "turn on line numbers

set ruler "Always show current positions along the bottom

set showcmd "show the command being typed

set laststatus=2
set statusline=%t "tail of filename
set statusline+=\ \[%{&ff}] "file format
set statusline+=%h "help file flag
set statusline+=%m "modified flag
set statusline+=%r "read only flag
set statusline+=%y "filetype
set statusline+=%= "left/right separator
set statusline+=%l/%L "cursor line/total line
set statusline+=\ %P "percent through file

"Sets file-specific syntax
au bufNewFile,BufRead *.hql set filetype=sql
au BufNewFile,BufRead *.vm set ft=html syntax=velocity
