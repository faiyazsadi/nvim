call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'lifepillar/vim-gruvbox8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'romainl/vim-cool'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'

Plug 'bfrg/vim-cpp-modern'

"Plug 'neovim/nvim-lspconfig'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

call plug#end()
