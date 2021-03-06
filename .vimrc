set number
set title

set cursorline
set expandtab
set tabstop=2
set shiftwidth=2

set autoindent


syntax enable

autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800
colorscheme molokai

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>

nmap perl <insert>#!/usr/bin/perl<RETURN><BS>
