"Snippets
nnoremap <leader>cpp :-1read ~\\AppData\\Local\\nvim\\snippets\\main.cpp<CR>:w<CR>8jma3jo
nnoremap <leader>com :-1read ~\\AppData\\Local\\nvim\\snippet\\template.cpp<CR>45j

augroup templates
  autocmd!
  autocmd BufNewFile,BufRead *.cpp call s:ApplyTemplate()

  function! s:ApplyTemplate()
    if getfsize(expand('%')) == 0
      execute "-1read ~\\AppData\\Local\\nvim\\snippets\\main." . expand('%:e')
      execute "%s/__CLASS_NAME__/" . expand('%:t:r') . "/e"
    endif
  endfun
augroup END
