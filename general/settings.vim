syntax on                   " syntax highlighting
"colorscheme gruvbox8_soft
colorscheme gruvbox8
set termguicolors
let base16colorspace=256
set number                  " add line numbers
set relativenumber
set hidden
set nowrap
set noswapfile
set nobackup
set splitright
set incsearch
set scrolloff=8
set background=dark         " tell vim what the background color looks like
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set nohlsearch              " don't highlight search pattern
set matchtime=0
set path+=**
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set smarttab                " Makes tabbing smarter will realize you have 2 vs 4
set expandtab               " Converts tabs to spaces
set smartindent             " Makes indenting smart
set autoindent              " Good auto indent
set cursorline              " Enable highlighting of the current line
"set guicursor=i:block       " Cursor is block shape
set showtabline=2           " Always show tabs
set cmdheight=2             " More space for displaying messages
set clipboard=unnamedplus   " Copy paste between vim and everything else
set formatoptions-=cro      " Stop newline continution of comments
"set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions

filetype plugin indent on   " allows auto-indenting depending on file type

autocmd BufWritePre * :%s/\s\+$//e "removes trailing whitespaces.
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
