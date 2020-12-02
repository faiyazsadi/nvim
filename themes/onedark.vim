" --------------------PREVIOUS---------------------
" onedark.vim override: Don't set a background color when running in a terminal;
"if (has("autocmd") && !has("gui_running"))
"  augroup colorset
"    autocmd!
"    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"  augroup END
"endif

"hi Comment cterm=italic
"let g:onedark_hide_endofbuffer=1
"let g:onedark_terminal_italics=1
"let g:onedark_termcolors=256

"syntax on
"colorscheme onedark


" checks if your terminal has 24-bit color support
"if (has("termguicolors"))
"    set termguicolors
"    hi LineNr ctermbg=NONE guibg=NONE
"endif


" --------------------MINE MINE MINE ----------------

highlight clear
syntax on
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

if exists("syntax_on")
  syntax reset
endif

set t_Co=256

let g:colors_name="onedark"

if !exists("g:onedark_termcolors")
  let g:onedark_termcolors = 256
endif

if !exists("g:onedark_terminal_italics")
  let g:onedark_terminal_italics = 0
endif

function! onedark#set_highlight(group, style)
  call s:h(a:group, a:style)
endfunction

function! onedark#extend_highlight(group, style)
  call s:h(a:group, a:style, 1)
endfunction

let s:colors = onedark#GetColors()

let s:red = s:colors.red
let s:dark_red = s:colors.dark_red
let s:green = s:colors.green
let s:yellow = s:colors.yellow
let s:dark_yellow = s:colors.dark_yellow
let s:blue = s:colors.blue
let s:purple = s:colors.purple
let s:cyan = s:colors.cyan
let s:white = s:colors.white
let s:black = s:colors.black
let s:visual_black = s:colors.visual_black " Black out selected text in 16-color visual mode
let s:comment_grey = s:colors.comment_grey
let s:gutter_fg_grey = s:colors.gutter_fg_grey
let s:cursor_grey = s:colors.cursor_grey
let s:visual_grey = s:colors.visual_grey
let s:menu_grey = s:colors.menu_grey
let s:special_grey = s:colors.special_grey
let s:vertsplit = s:colors.vertsplit

if has("nvim")
  let g:terminal_color_0 =  s:black.gui
  let g:terminal_color_1 =  s:red.gui
  let g:terminal_color_2 =  s:green.gui
  let g:terminal_color_3 =  s:yellow.gui
  let g:terminal_color_4 =  s:blue.gui
  let g:terminal_color_5 =  s:purple.gui
  let g:terminal_color_6 =  s:cyan.gui
  let g:terminal_color_7 =  s:white.gui
  let g:terminal_color_8 =  s:visual_grey.gui
  let g:terminal_color_9 =  s:dark_red.gui
  let g:terminal_color_10 = s:green.gui " No dark version
  let g:terminal_color_11 = s:dark_yellow.gui
  let g:terminal_color_12 = s:blue.gui " No dark version
  let g:terminal_color_13 = s:purple.gui " No dark version
  let g:terminal_color_14 = s:cyan.gui " No dark version
  let g:terminal_color_15 = s:comment_grey.gui
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif

set background=dark