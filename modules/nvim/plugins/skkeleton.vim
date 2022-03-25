function! s:skkeleton_init() abort
  call skkeleton#config({
        \ 'eggLikeNewline': v:true,
        \ 'useSkkServer': v:true,
        \ })
  call skkeleton#register_kanatable('rom', {
        \ "z\<Space>": ["\u3000", ''],
        \ })
endfunction
autocmd User skkeleton-initialize-pre call s:skkeleton_init()

imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)
