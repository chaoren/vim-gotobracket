function unmatchedbracket#find(bracket)
	let l:oldpos = getcurpos()
	let l:forward = a:bracket == ']'
	let l:flags = l:forward ? 'W' : 'bW'
	while v:true
		if search(a:bracket, l:flags) == 0
			call setpos('.', l:oldpos)
			return
		endif
		let l:newpos = getcurpos()
		let l:leftpos = l:forward ? l:oldpos : l:newpos
		let l:rightpos = l:forward ? l:newpos : l:oldpos
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
			return
		endif
	endwhile
endfunction
