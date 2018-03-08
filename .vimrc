execute pathogen#infect()
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-github-dashboard.git'
Plug 'faith/vim-go'

"let g:deoplete#enable_at_startup = 1
call deoplete#enable()

set encoding=utf-8

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set t_Co=256

syntax on

"let g:solarized_termcolors=256
colorscheme solarized
set background=dark

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://sunaku.github.io/vim-256color-bce.html
    set t_ut=
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set splitbelow
set splitright

set relativenumber
set number
