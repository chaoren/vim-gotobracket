if exists('g:loaded_gotobracket')
	finish
endif
let g:loaded_gotobracket = 1

let s:cpo = &cpoptions
set cpoptions-=<

nnoremap <silent><expr><Plug>GotoOpenBracket  gotobracket#cmd('call gotobracket#find("[", v:count1, "n")')
nnoremap <silent><expr><Plug>GotoCloseBracket gotobracket#cmd('call gotobracket#find("]", v:count1, "n")')
xnoremap <silent><expr><Plug>GotoOpenBracket  gotobracket#cmd('call gotobracket#find("[", v:count1, "x")')
xnoremap <silent><expr><Plug>GotoCloseBracket gotobracket#cmd('call gotobracket#find("]", v:count1, "x")')
onoremap <silent><expr><Plug>GotoOpenBracket  gotobracket#cmd('call gotobracket#find("[", v:count1, "o")')
onoremap <silent><expr><Plug>GotoCloseBracket gotobracket#cmd('call gotobracket#find("]", v:count1, "o")')

if !get(g:, 'gotobracket_nomap', 0)
	nmap [r <Plug>GotoOpenBracket
	nmap ]r <Plug>GotoCloseBracket
	xmap [r <Plug>GotoOpenBracket
	xmap ]r <Plug>GotoCloseBracket
	omap [r <Plug>GotoOpenBracket
	omap ]r <Plug>GotoCloseBracket
endif

let &cpoptions = s:cpo
unlet s:cpo
