" The MIT License (MIT)
"
" Copyright (c) 2014 Gustavo Franco
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to
" deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
" FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

"
" Vim
"
" Use Vim settings, rather then Vi settings
set nocompatible

" Check color support
if (&t_Co > 2 || has("gui_running"))
  " Enable syntax highlighting
  syntax on

  " Enable last used search pattern highlighting
  set hlsearch

  " Enable cursor line highlighting
  set cursorline

  " Enable support for 256 colors
  set t_Co=256

  " Enable overlength line highlighting
  if exists('+colorcolumn')
    set colorcolumn=80
  else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
  endif

  " Enable trailing whitespace hightlighting
  highlight WhitespaceEOL ctermbg=DarkRed
  match WhitespaceEOL /\s\+$/
endif

" Enable mouse support
set mouse=a

" Enable line numbers
set number

" Enable case-insensitive search
set ic

" Enable specific configuration for filetypes
filetype plugin indent on

" Set history size
set history=100

" Enable .viminfo
set viminfo='20,\"50

" Set utf-8 encoding
set encoding=utf-8
set fileencoding=utf-8

" Use two spaces as tab
set tabstop=2 shiftwidth=2 expandtab

" Shortcuts
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
" Enable pathogen as submodule
runtime bundle/vim-pathogen/autoload/pathogen.vim

" Run pathogen
execute pathogen#infect()


"
" NERDTree
"
" Map Control-n to toggle NERDTree
map <C-\> :NERDTreeToggle<CR>

" Open automatically when vim starts up but no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim when NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default
let NERDTreeShowHidden = 1

" Minimal UI
let NERDTreeMinimalUI = 1

" Dir arrows
let NERDTreeDirArrows = 1


"
" Airline
"
" Start airline
let g:airline#extensions#tabline#enabled = 1

" Use powerline fonts
let g:airline_powerline_fonts = 1

" Don't redraw while executing macros
set lazyredraw

" Appear all time
set laststatus=2
