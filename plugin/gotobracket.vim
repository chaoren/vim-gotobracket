if exists('g:loaded_gotobracket')
	finish
endif
let g:loaded_gotobracket = 1

nnoremap <silent><expr><Plug>GotoOpenBracket  gotobracket#cmd('call gotobracket#find("[", v:count1, "n")<CR>')
nnoremap <silent><expr><Plug>GotoCloseBracket gotobracket#cmd('call gotobracket#find("]", v:count1, "n")<CR>')
xnoremap <silent><expr><Plug>GotoOpenBracket  gotobracket#cmd('call gotobracket#find("[", v:count1, "x")<CR>')
xnoremap <silent><expr><Plug>GotoCloseBracket gotobracket#cmd('call gotobracket#find("]", v:count1, "x")<CR>')
onoremap <silent><expr><Plug>GotoOpenBracket  gotobracket#cmd('call gotobracket#find("[", v:count1, "o")<CR>')
onoremap <silent><expr><Plug>GotoCloseBracket gotobracket#cmd('call gotobracket#find("]", v:count1, "o")<CR>')

if !get(g:, 'gotobracket_nomap', 0)
	nmap [[ <Plug>GotoOpenBracket
	nmap ]] <Plug>GotoCloseBracket
	xmap [[ <Plug>GotoOpenBracket
	xmap ]] <Plug>GotoCloseBracket
	omap [[ <Plug>GotoOpenBracket
	omap ]] <Plug>GotoCloseBracket
endif
