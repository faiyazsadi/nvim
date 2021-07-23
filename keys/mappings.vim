let g:mapleader = ';'
autocmd TermOpen * startinsert

"Normal Mode Mappings
nnoremap <leader>ca :w<CR> :%y+<CR>
nnoremap <leader>da :%d<CR>
nnoremap <leader>dv "_dd
"nnoremap <leader>s :w<CR>
nnoremap <silent> <leader>so :e $MYVIMRC<CR>
"vnoremap <leader>cc 0i//<ESC>
"vnoremap <leader>co 0xx<ESC>

"Commenting Code
vnoremap <leader>cc :norm i//<CR>
vnoremap <leader>co :norm xx<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-f> :wq<CR>
nnoremap <C-q> :q!<CR>
nnoremap <C-w> :bd<CR>

"Split Screen Navigation
nnoremap <silent> <leader>sp :vsp<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <S-i> <S-s>
nnoremap <silent> <leader>gn :bn<CR>
nnoremap <silent> <space>t :terminal<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

"Start Terminal
nnoremap <silent> <C-t> :terminal<CR>

"Insert Mode Mappings
inoremap <C-o> <ESC>O

"Visual Mode Mappings
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap < <gv
vnoremap > >gv

"Terminal Mode Mappings
tnoremap <Esc> <C-\><C-n>

"Turn off relative numbering in Insert Mode.
"augroup every
"  autocmd!
"  au InsertEnter * set norelativenumber
"  au InsertLeave * set relativenumber
"augroup END
