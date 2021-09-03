let $init_path = "~/AppData/Local/nvim"

source $init_path/vim-plug/plugins.vim
source $init_path/general/settings.vim
source $init_path/keys/mappings.vim
source $init_path/plug-config/vim-startify.vim
source $init_path/plug-config/vim-floaterm.vim
source $init_path/plug-config/vim-cpp-modern.vim
source $init_path/themes/airline.vim
source $init_path/snippets/snippets.vim
source $init_path/comp/cp.vim

lua require 'init'
lua require 'clangd'
