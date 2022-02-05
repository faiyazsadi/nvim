let g:startify_bookmarks = [
  \ { 'r': '~\AppData\Local\nvim\init.vim' },
  \ { 'y': '~\AppData\Roaming\alacritty\alacritty.yml' },
  \ { 'o': 'D:\Programming\CF.cpp' },
  \ { 'a': 'D:\Programming\AtCoder.cpp' },
  \ ]

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]
let g:startify_fortune_use_unicode = 0
nnoremap <C-n> :Startify<CR>
