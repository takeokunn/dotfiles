if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  " not lazy load
  call dein#load_toml('~/.config/nvim/toml/basic.toml', { 'lazy': 0 })
  call dein#load_toml('~/.config/nvim/toml/cursor.toml', { 'lazy': 0 })
  call dein#load_toml('~/.config/nvim/toml/filer.toml', { 'lazy': 0 })
  call dein#load_toml('~/.config/nvim/toml/theme.toml', { 'lazy': 0 })

  " lazy load
  call dein#load_toml('~/.config/nvim/toml/lang.toml', { 'lazy': 1 })

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
set cursorcolumn
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
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

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

nnoremap <silent> <c-j> 10gj
nnoremap <silent> <c-k> 10gk
nnoremap <silent><expr> * v:count ? '*' : ':sil exe "keepj norm! *" <Bar> call winrestview(' . string(winsaveview()) . ')<CR>'

" denite
nnoremap <silent> <leader>k :Denite file/rec<CR>
nnoremap <silent> <leader>b :Denite buffer<CR>
nnoremap <silent> <leader>o :Denite outline<CR>
nnoremap <silent> <leader>l :Denite line<CR>
nnoremap <silent> <leader>r :Denite file/old<CR>
nnoremap <silent> <leader>h :Denite command_history<CR>
nnoremap <silent> <leader>g :Denite grep<CR>

" defx
nnoremap <silent> <leader>y :Defx -columns=git:mark:filename:type<CR>

" undo-tree
nnoremap <silent> <leader>u :UndotreeToggleAndFocus<CR>

" easymotion
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map  L <Plug>(easymotion-bd-jk)
nmap L <Plug>(easymotion-overwin-line)
map  W <Plug>(easymotion-bd-w)
nmap W <Plug>(easymotion-overwin-w)

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap<silent> K :call <SID>show_documentation()<CR>

