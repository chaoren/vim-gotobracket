if exists('g:loaded_unmatchedbracket')
	finish
endif
let g:loaded_unmatchedbracket = v:true

nnoremap <silent><Plug>UnmatchedOpenBracket  :call unmatchedbracket#find('[')<CR>
nnoremap <silent><Plug>UnmatchedCloseBracket :call unmatchedbracket#find(']')<CR>

if !get(g:, 'unmatchedbracket_nomap', v:false)
	nmap [[ <Plug>UnmatchedOpenBracket
	nmap ]] <Plug>UnmatchedCloseBracket
endif
