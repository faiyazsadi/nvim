let g:mapleader = ';'
autocmd TermOpen * startinsert

nnoremap <leader>a :%y+<CR>
nnoremap <leader>d :%d<CR>
nnoremap <leader>s :w<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-w> :wq<CR>
nnoremap <C-q> :q!<CR>

inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>b :w <bar> :term g++ -std=c++17 -Wall -Wextra -O2 -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
nnoremap <C-b> :w <bar> :term g++ -std=c++17 -Wall -Wextra -O2 -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
nnoremap <C-Space> :term %:r.exe<CR>
nnoremap <leader>r :term %:r.exe<CR>