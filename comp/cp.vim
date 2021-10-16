" for detecting OS
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

" important option that should already be set!
set hidden

let $CXX='g++'
let $CXXFLAGS='-std=c++20 -Wall -Wextra -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC'

" available options:
" * let g:split_term_style = 'vertical'
" * let g:split_term_resize_cmd = 'below vertical resize 40'

function! TermWrapper(command) abort
	if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
	if g:split_term_style ==# 'vertical'
		let buffercmd = 'below vnew'
	elseif g:split_term_style ==# 'horizontal'
		let buffercmd = 'below new'
	else
		echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
		throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
	endif
	if exists('g:split_term_resize_cmd')
		exec g:split_term_resize_cmd
	endif
	exec buffercmd
	exec 'term ' . a:command
	exec 'startinsert'
endfunction

:nnoremap <silent> <F8> :!start cmd /c "%:r:s,$,.exe," && pause<CR>

" Build System
command! -nargs=0 CompileAndRun call TermWrapper(printf('g++ -std=c++20 -Wall -Wextra -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC %s && a.exe', expand('%')))
command! -nargs=0 Run call TermWrapper(printf('a.exe'))
autocmd FileType cpp nnoremap <leader>fj :w<CR> :CompileAndRun<CR>
autocmd FileType cpp nnoremap <leader>fr :Run<CR>
" autocmd FileType cpp nnoremap <C-Space> :Run<CR>

" CPP Compilation options.
autocmd Filetype cpp nnoremap <silent> <leader>b :w<CR> :term g++ -std=c++20 -Wall -Wextra -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
autocmd Filetype cpp nnoremap <silent> <leader><space> :w<CR> :term g++ -std=c++20 -Wall -Wextra -Wshadow -Wconversion -DLOCAL -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC "%" -o "%:r" && "%:r.exe"<CR>
autocmd Filetype cpp nnoremap <silent> <C-Space> :term "%:r.exe"<CR>
autocmd Filetype cpp nnoremap <silent> <space><space> :term "%:r.exe"<CR>

" C compilation options.
autocmd Filetype c nnoremap <silent> <leader><space> :w<CR> :term gcc -std=c17 -Wall -Wextra -Wshadow -Wconversion -DLOCAL "%" -o "%:r" && "%:r.exe"<CR>
autocmd Filetype c nnoremap <silent> <space><space> :term "%:r.exe"<CR>
