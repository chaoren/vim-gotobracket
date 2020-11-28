# Go to unmatched '[' and ']' [![Build Status][1]][2]

The same as what `[{` and `]}` does for `{` and `}`, except for `[` and `]`.

## Customization

Use `g:unmatchedbracket_nomap` to disable the default `[[` and `]]` mappings.\
E.g.,
```
let g:unmatchedbracket_nomap = 1
```

Use `<Plug>UnmatchedOpenBracket` and `<Plug>UnmatchedCloseBracket` to define
your own mappings.\
E.g.,
```
nmap <silent><Leader>[ <Plug>UnmatchedOpenBracket
nmap <silent><Leader>] <Plug>UnmatchedCloseBracket
```

## TODO

- Fix case with existing text selection.

[1]: https://travis-ci.com/chaoren/vim-unmatchedbracket.svg?branch=master
[2]: https://travis-ci.com/chaoren/vim-unmatchedbracket
