let g:mapleader = ';'
autocmd TermOpen * startinsert

nnoremap <leader>a :%y+<CR>:w<CR>
nnoremap <leader>d :%d<CR>
nnoremap <leader>s :w<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-w> :wq<CR>
nnoremap <C-q> :q!<CR>

inoremap <C-o> <Esc>O
"inoremap <C-o> <CR><Esc>O

"inoremap jj <Esc>

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>b :w <bar> :silent term g++ -std=c++17 -Wall -Wextra -O2 -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
nnoremap <C-b> :w <bar> :silent term g++ -std=c++17 -Wall -Wextra -O2 -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
nnoremap <C-Space> :term %:r.exe<CR>

nnoremap <leader>cpp :-1read ~/AppData/Local/nvim/snippets/main.cpp<CR>:w<CR>6jo
nnoremap <leader>com :-1read ~/AppData/Local/nvim/snippets/template.cpp<CR>45j
