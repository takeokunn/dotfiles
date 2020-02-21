if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml('~/.config/vim/dein.toml', { 'lazy': 0 })

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

" settings
set encoding=utf-8
set fileencoding=utf-8
set clipboard+=unnamed
set backspace=2
set tabstop=2
set shiftwidth=2
set laststatus=2
set statusline=%y
set showmatch
set wrapscan
set hlsearch
set showcmd
set title
set number relativenumber
set cursorline
set cursorcolumn
set nofoldenable
set noswapfile
set expandtab
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase
:syntax on
set t_Co=256

nmap / /\v
nmap <Leader><Leader> V
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent><C-y> :NERDTreeToggle<CR>
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

colorscheme atom-dark-256

set nocompatible
map ^[OA ^[ka
map ^[OB ^[ja
map ^[OC ^[la
map ^[OD ^[ha

nnoremap <C-p> :FZFFileList<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,x :GitFiles?<CR>
command! FZFFileList call fzf#run(fzf#wrap({
            \ 'source': 'find . -type d -name .git -prune -o ! -name .DS_Store',
            \ 'down': '40%'}))

set updatetime=250

function MySwoop()
    let currWord = expand('<cword>')
    call SwoopPattern(currWord)
endfunction

nmap <Leader>l :call MySwoop()<CR>
nmap <Leader>q :bdelete! swoopBuf<CR>
