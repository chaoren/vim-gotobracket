if exists('g:loaded_gotobracket')
	finish
endif
let g:loaded_gotobracket = 1

nnoremap <silent><Plug>GotoOpenBracket  <Cmd>call gotobracket#find('[', v:count1, 'n')<CR>
nnoremap <silent><Plug>GotoCloseBracket <Cmd>call gotobracket#find(']', v:count1, 'n')<CR>
xnoremap <silent><Plug>GotoOpenBracket  <Cmd>call gotobracket#find('[', v:count1, 'x')<CR>
xnoremap <silent><Plug>GotoCloseBracket <Cmd>call gotobracket#find(']', v:count1, 'x')<CR>
onoremap <silent><Plug>GotoOpenBracket  <Cmd>call gotobracket#find('[', v:count1, 'o')<CR>
onoremap <silent><Plug>GotoCloseBracket <Cmd>call gotobracket#find(']', v:count1, 'o')<CR>

if !get(g:, 'gotobracket_nomap', 0)
	nmap [[ <Plug>GotoOpenBracket
	nmap ]] <Plug>GotoCloseBracket
	xmap [[ <Plug>GotoOpenBracket
	xmap ]] <Plug>GotoCloseBracket
	omap [[ <Plug>GotoOpenBracket
	omap ]] <Plug>GotoCloseBracket
endif
