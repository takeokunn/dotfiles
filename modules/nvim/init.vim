if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  " not lazy load
  call dein#load_toml('~/.config/nvim/toml/basic.toml', { 'lazy': 0 })
  call dein#load_toml('~/.config/nvim/toml/theme.toml', { 'lazy': 0 })

  " lazy load
  call dein#load_toml('~/.config/nvim/toml/ddc.toml', { 'lazy': 1 })
  call dein#load_toml('~/.config/nvim/toml/ddu.toml', { 'lazy': 1 })
  call dein#load_toml('~/.config/nvim/toml/joke.toml', { 'lazy': 1 })
  call dein#load_toml('~/.config/nvim/toml/language.toml', { 'lazy': 1 })
  call dein#load_toml('~/.config/nvim/toml/lsp.toml', { 'lazy': 1 })
  call dein#load_toml('~/.config/nvim/toml/utility.toml', { 'lazy': 1 })
  call dein#load_toml('~/.config/nvim/toml/cursor.toml', { 'lazy': 1 })

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" settings
filetype plugin indent on
syntax on

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
set nofoldenable
set noswapfile
set expandtab
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase
set wildmode=longest:full,full
set t_Co=256
set history=1000
set autoread
au FocusGained,BufEnter * checktime
set list

" cursor line
highlight clear CursorLine

" highlight
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

" netrw
let g:netrw_liststyle=3

" keymap
nmap / /\v

vnoremap < <gv
vnoremap > >gv

inoremap jh <Esc>
nnoremap <Leader>p "+p
nmap <Esc><Esc> :nohlsearch<CR><Esc>

let mapleader = ','

" basic
nnoremap <silent> <c-j> 10gj
nnoremap <silent> <c-k> 10gk
nnoremap <silent><expr> * v:count ? '*' : ':sil exe "keepj norm! *" <Bar> call winrestview(' . string(winsaveview()) . ')<CR>'

" window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sw <C-w>w

" buffer
nnoremap <silent> sp :<C-u>bp<CR>
nnoremap <silent> sn :<C-u>bn<CR>

" undo-tree
nnoremap <silent> <leader>u :UndotreeToggleAndFocus<CR>

" easymotion
nmap <silent> f <Plug>(easymotion-overwin-f2)

" ddc
inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'
inoremap <silent><expr> <TAB>
         \ pumvisible() ? '<C-n>' :
         \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
         \ '<TAB>' : ddc#map#manual_complete()

"ddu
nnoremap <SID>[ug] <Nop>
nmap ,u <SID>[ug]
nnoremap <silent> <SID>[ug]m :<C-u>Ddu mr<CR>
nnoremap <silent> <SID>[ug]b :<C-u>Ddu buffer<CR>
nnoremap <silent> <SID>[ug]r :<C-u>Ddu register<CR>
nnoremap <silent> <SID>[ug]n :<C-u>Ddu file -source-param-new -volatile<CR>
nnoremap <silent> <SID>[ug]f :<C-u>Ddu file<CR>
