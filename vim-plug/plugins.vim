call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'rafi/awesome-vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-gruvbox8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'
Plug 'romainl/vim-cool' 

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'

call plug#end()
