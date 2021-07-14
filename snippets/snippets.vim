"Snippets
nnoremap <leader>cpp :-1read ~/AppData/Local/nvim/snippets/main.cpp<CR>:w<CR>11jo
nnoremap <leader>com :-1read ~/AppData/Local/nvim/snippet/template.cpp<CR>45j

"Auto-commands for new C File.
augroup c17
  autocmd!
  au BufNewFile,BufRead *.c 0r ~/AppData/Local/nvim/snippets/main.c
augroup END

"Auto-commands for new CPP File.
augroup cpp
  autocmd!
  au BufNewFile,BufRead *.cpp 0r ~/AppData/Local/nvim/snippets/main.cpp
augroup END
