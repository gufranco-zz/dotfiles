" 
" VIM
"
" default configuration
set nocompatible
" syntax colors
syntax on
" mouse
set mouse=a
" highlight cursor line
set cursorline
hi CursorLine cterm=NONE ctermbg=DarkBlue
" line numbers
set number
" highlight overlength lines
if exists('+colorcolumn')
  set colorcolumn=80
    hi ColorColumn ctermbg=DarkGrey
  else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" highlight trailing whitespace
highlight WhitespaceEOL ctermbg=DarkRed
match WhitespaceEOL /\s\+$/
" case-insensitive search
set ic
" color scheme
colorscheme desert
" specific configuration for filetypes
filetype plugin indent on
" history size
set history=100
" read/write .viminfo
set viminfo='20,\"50
" highlight all search pattern matches
set hlsearch
" enable 256 colors
set t_Co=256
" encoding displayed
set encoding=utf-8
" encoding written
set fileencoding=utf-8
" two spaces as tab
set tabstop=2 shiftwidth=2 expandtab


"
" Shortcuts
"
" github.com/fbueno/dotfiles/blob/master/vim/vimrc
cab W! w!
cab Q! q!
cab Wq wq
cab Wa wa
cab wQ wq
cab WQ wq
cab W w
cab Q q

" 
" Pathogen
"
" pathogen as submodule
runtime bundle/vim-pathogen/autoload/pathogen.vim
" run pathogen
execute pathogen#infect()

"
" NERDTree
"
" map Control-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" open automatically when vim starts up but no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim when NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" show hidden files by default
let NERDTreeShowHidden = 1
" minimal UI
let NERDTreeMinimalUI = 1
" dir arrows
let NERDTreeDirArrows = 1
