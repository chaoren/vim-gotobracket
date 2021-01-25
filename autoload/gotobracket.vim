function gotobracket#find(bracket, count, mode)
	if a:mode == 'o'
		normal! v
	endif
	let l:count = a:count
	let l:forward = a:bracket == ']'
	let l:flags = l:forward ? 'W' : 'bW'
	while l:count > 0 && gotobracket#next(a:bracket, l:forward, l:flags)
		let l:count -= 1
	endwhile
endfunction

function gotobracket#next(bracket, forward, flags)
	let l:oldpos = getcurpos()
	while 1
		if search(a:bracket, a:flags) == 0
			call setpos('.', l:oldpos)
			return 0
		endif
		let l:newpos = getcurpos()
		let l:leftpos = a:forward ? l:oldpos : l:newpos
		let l:rightpos = a:forward ? l:newpos : l:oldpos
		let l:lines = getline(l:leftpos[1], l:rightpos[1])
		if len(l:lines) == 1
			let l:content = l:lines[0][l:leftpos[2]:l:rightpos[2]-2]
		else
			let l:lines[0] = l:lines[0][l:leftpos[2]:]
			if l:rightpos[2] == 1
				let l:lines[-1] = ''
			else
				let l:lines[-1] = l:lines[-1][:l:rightpos[2]-2]
			endif
			let l:content = join(l:lines, '\n')
		endif
		let l:content = split(l:content, '\zs') " for vim 7.4
		if count(l:content, '[') == count(l:content, ']')
			return 1
		endif
	endwhile
endfunction
