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

" settings
filetype plugin indent on
syntax enable
:syntax on
colorscheme atom-dark-256

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

" gitgutter
set updatetime=250

" swoop
function! MySwoop()
  let word = expand('<cword>')
  if len(word) > 0
    call SwoopPattern(word)
  else
    call Swoop()
  end
endfunction

" denite
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
        \ denite#do_map('toggle_select').'j'
endfunction

" deoplete
let g:deoplete#enable_at_startup = 1

" indentLine
let g:indentLine_char = '¦'

" keymap
nmap / /\v
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <silent> ,y :NERDTreeToggle<CR>
nmap <silent> ,k :Denite file/rec<CR>
nmap <silent> ,b :Denite buffer<CR>
nmap <silent> ,o :Denite outline<CR>
nmap <silent> ,r :Denite file/old<CR>
nmap <silent> ,h :Denite command_history<CR>
nmap <silent> ,g :Denite grep<CR>
nmap <silent> ,s :call MySwoop()<CR>
nmap <silent> ,q :bdelete! swoopBuf<CR>
