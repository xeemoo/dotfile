syntax enable
set background=dark
colorscheme solarized

set nocompatible  " Use the vim's keyboard setting, not vi
set encoding=utf-8

filetype on       " File type detection
filetype indent on " Loading the indent file for specific file types with
filetype plugin on " Loading the plugin file for seecific file types with 

" Tab and Indent
set tabstop=4     " Tab键等同的空格长度
set softtabstop=4 " 以shiftwidth为标准长度，按Tab时插入Tab和空格的混合
set shiftwidth=4  " 自动缩进时使用的空白长度
set autoindent    " 在新行自动添加与当前行同等的缩进
set cindent       " 类似C语言的缩进
set expandtab     " Tab to Space
set ai!

" Search and Match
set hlsearch      " Highlight the search result
set incsearch     " 实时搜索
set smartcase     " 有一个或以上大写字母时，保持对大小写敏感
set ignorecase    " 搜索时忽略大小写
set showmatch     " When a bracket is inserted, briefly jump to the matching one

" Display
set number
set showmode
set ruler
" status_bar
set laststatus=2
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=black
set statusline=[%n][%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%][%{((&fenc==\"\")?\"\":\"\\".&fenc)}]
syn on se title

" Auto add head info
" .py file 
function AddPyHeader()
    call setline(1, "#!/usr/bin/env python")
    call append(1,  "# -*- coding: utf-8 -*-")
    call append(2,  " ")
    normal G
    normal o
endf
autocmd bufnewfile *.py call AddPyHeader()

" .cpp file
function AddCppHeader()
    call setline(1, "#include <iostream>")
    call append(1,  "using namespace std;")
    call append(2,  " ")
    normal G
    normal o
endf
autocmd bufnewfile *.cpp call AddCppHeader()
