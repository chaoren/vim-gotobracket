let s:cmd = has('patch-8.2.1978') ? "\<Cmd>" : ":\<C-U>"

function gotobracket#cmd(expr)
	return s:cmd.a:expr."\<CR>"
endfunction

function gotobracket#find(bracket, count, mode)
	if a:mode == 'o'
		normal! v
	endif
	let l:count = a:count
	let l:forward = a:bracket == ']'
	let l:flags = l:forward ? 'W' : 'bW'
	let l:Skip = {-> synIDattr(synID(line('.'), col('.'), 0), 'name') =~? 'string\|comment'}
	while l:count > 0 && searchpair('\[', '', '\]', l:flags, l:Skip)
		let l:count -= 1
	endwhile
endfunction
