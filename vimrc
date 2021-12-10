"use vim plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'davidhalter/jedi-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'gabgir/cypher-vim-syntax'
Plug 'ervandew/supertab'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'masukomi/vim-markdown-folding'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdcommenter'
call plug#end()

colorscheme onehalfdark
set term=xterm-256color
set termencoding=utf-8
set termguicolors

" jedi-vim auto completion"
autocmd FileType python setlocal completeopt-=preview

set nocompatible
filetype plugin on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set  cursorline
set clipboard=unnamed

let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
let g:airline#extensions#tabline#enabled = 1
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
let g:airline_skip_empty_sections = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.colnr = "\u33c7" "fixing missing symbol

set number
syntax on

set laststatus=2

"enable folding
set foldmethod=indent
set foldlevel=99
set noswapfile
set nobackup


"Syntastic status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" markdown default fold nested
" (https://github.com/masukomi/vim-markdown-folding)
autocmd FileType markdown set foldexpr=NestedMarkdownFolds()
"change to onehalfdark for markdown files
"autocmd FileType markdown colorscheme OceanicNext
"set termguicolors fixes color issues
"autocmd FileType markdown set termguicolors

" highlight matches as we search
set incsearch
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

" add fzf to path
set rtp+=/usr/local/opt/fzf

"mouse support
set mouse=a
map <ScrollWheelDown> j
map <ScrollWheelUp> k

"change so default sort is by appearance order
let g:tagbar_sort = 0
"key mapping
let mapleader = '\'

"change jedi-vim default
let g:jedi#usages_command = "<leader>u"
map <leader>n :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
map <leader>o :Files<CR>
" removed nerd commenter default mapping
let g:NERDCreateDefaultMappings = 0
map <leader>/ <plug>NERDCommenterToggle
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

"change buffer quickly
nnoremap <Leader>b :buffer<Space>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

