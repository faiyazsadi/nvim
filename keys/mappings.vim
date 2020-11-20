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