"function! Close_quickfix_list()
"    execute "cclose"
"endfunction
"
"function! Run()
"    execute "term %:r.exe"
"endfunction
"
"function! Show_quickfix_list()
"   execute "copen"
"endfunction

function! Get_quickfix_list_size()
   let qfsize = getqflist({'size' : 0}).size
   if qfsize > 1
       execute "copen"
        "call Show_quickfix_list()
   else
       execute "term %:r.exe"
        "call Run()
   endif
endfunction
