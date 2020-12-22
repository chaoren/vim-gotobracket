if exists('g:loaded_unmatchedbracket')
	finish
endif
let g:loaded_unmatchedbracket = v:true

nnoremap <silent><Plug>UnmatchedOpenBracket  :<C-U>call unmatchedbracket#find('[', v:count1, 'n')<CR>
nnoremap <silent><Plug>UnmatchedCloseBracket :<C-U>call unmatchedbracket#find(']', v:count1, 'n')<CR>
xnoremap <silent><Plug>UnmatchedOpenBracket  :<C-U>call unmatchedbracket#find('[', v:count1, 'x')<CR>
xnoremap <silent><Plug>UnmatchedCloseBracket :<C-U>call unmatchedbracket#find(']', v:count1, 'x')<CR>
onoremap <silent><Plug>UnmatchedOpenBracket  :<C-U>call unmatchedbracket#find('[', v:count1, 'o')<CR>
onoremap <silent><Plug>UnmatchedCloseBracket :<C-U>call unmatchedbracket#find(']', v:count1, 'o')<CR>

if !get(g:, 'unmatchedbracket_nomap', v:false)
	nmap [[ <Plug>UnmatchedOpenBracket
	nmap ]] <Plug>UnmatchedCloseBracket
	xmap [[ <Plug>UnmatchedOpenBracket
	xmap ]] <Plug>UnmatchedCloseBracket
	omap [[ <Plug>UnmatchedOpenBracket
	omap ]] <Plug>UnmatchedCloseBracket
endif
