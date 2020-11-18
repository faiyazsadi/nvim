let g:mapleader = ';'
autocmd TermOpen * startinsert

"Normal Mode Mappings
nnoremap <leader>a :%y+<CR>:w<CR>
nnoremap <leader>d :%d<CR>
nnoremap <leader>s :w<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-f> :wq<CR>
nnoremap <C-q> :q!<CR>

"Split Screen Navigation
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

"Insert Mode Mappings
inoremap <C-o> <ESC>O
"inoremap jj <Esc>

"Visual Mode Mappings
vnoremap < <gv
vnoremap > >gv

"C++ Build System
nnoremap <leader>b :w<CR> :vs<CR> :wincmd l<CR> :silent term g++ -std=c++17 -Wall -Wextra -O2 -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
nnoremap <C-b> :w<CR> :vs<CR> :wincmd l<CR> :silent term g++ -std=c++17 -Wall -Wextra -O2 -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
nnoremap <C-Space> :vs<CR> :wincmd l<CR> :term %:r.exe<CR>

"Snippets
nnoremap <leader>cpp :-1read ~/AppData/Local/nvim/snippets/main.cpp<CR>:w<CR>6jo
nnoremap <leader>com :-1read ~/AppData/Local/nvim/snippets/template.cpp<CR>45j
