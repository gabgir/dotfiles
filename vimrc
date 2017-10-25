execute pathogen#infect()
set background=dark
colorscheme solarized

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

set number
syntax on

set laststatus=2

"enable folding
set foldmethod=indent
set foldlevel=99
set noswapfile
set nobackup

"NERDTree toggle with leader q
map <C-n> :NERDTreeToggle<CR>

"Syntastic status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
