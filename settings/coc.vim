let g:coc_global_extensions = [
  \ 'coc-clangd',
  \ 'coc-ultisnips',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-eslint',
  \ 'coc-git',
  \ 'coc-prettier',
  \ 'coc-flutter',
  \ 'coc-angular',
  \ 'coc-pyright',
  \ ]


" Key mapping

" ctrl + space to show list functions/autocomplete.
inoremap <silent><expr> <c-space> coc#refresh()

"" Auto import library when press Tab.
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"

" Highlight cursor's word.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Shift + K to show document for function or variable.

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction



