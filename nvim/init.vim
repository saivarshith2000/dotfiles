" neovim config by Sai Varshith (hosvarshith@gmail.com : saivarshith2000)
" This file contains plugs and small basic configuration. Pluging related
" configuration will be sourced from respective configs

call plug#begin('~/.nvim/plugins')
" gruvbox theme
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
" better syntax highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" emmet
Plug 'mattn/emmet-vim'
" tabbar (supplied by vim-airline)
" Plug 'drmingdrmer/vim-tabbar'
" colors preview
Plug 'chrisbra/Colorizer'
"nerdtree
Plug 'scrooloose/nerdtree'
" devicons
Plug 'ryanoasis/vim-devicons'
"nerdtree colors
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"nerdtree git plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
"commenter
Plug 'tpope/vim-commentary'
" brackets
Plug 'jiangmiao/auto-pairs'
"deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Source other configs
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/keybinds.vim
source ~/.config/nvim/airline.vim

"start deoplete
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" tab related
set tabstop=4
set shiftwidth=4
" There must be a space after the last character of the next line
set listchars=tab:\|\ 
set list

" highlight current line
set termguicolors
set cursorline
hi cursorline cterm=none term=none
hi VertSplit ctermbg=None guibg=None
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" set mouse
set mouse=a

" enable file type plugins
filetype plugin on

" text encoding
set encoding=UTF-8
set fillchars+=vert:│

" color scheme options
syntax enable
" let base16colorspace=256
" if filereadable(expand("~/.vimrc_background"))
"   let base16colorspace=256
"   source ~/.vimrc_background
" endif
color gruvbox
let g:gruvbox_contrast_dark = 'hard'

" line numbers
set number relativenumber
set nu

" emmet settings
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" nerdtree highlight settings
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', "c++", 'cpp', 'json',"vim","cxx", 'js', 'css', 'html', 'py', 'java']
