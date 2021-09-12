# Go to unmatched '[' and ']' [![Build Status][1]][2]

The same as what `[{` and `]}` does for `{` and `}`, except for `[` and `]`.

## Customization

Use `g:gotobracket_nomap` to disable the default `[r` and `]r` mappings. \
E.g.,

```vim
let g:gotobracket_nomap = 1
```

Use `<Plug>GotoOpenBracket` and `<Plug>GotoCloseBracket` to define your own
mappings. \
E.g.,

```vim
nmap <silent><Leader>[ <Plug>GotoOpenBracket
nmap <silent><Leader>] <Plug>GotoCloseBracket
xmap <silent><Leader>[ <Plug>GotoOpenBracket
xmap <silent><Leader>] <Plug>GotoCloseBracket
omap <silent><Leader>[ <Plug>GotoOpenBracket
omap <silent><Leader>] <Plug>GotoCloseBracket
```

[1]: https://app.travis-ci.com/chaoren/vim-gotobracket.svg?branch=master
[2]: https://app.travis-ci.com/chaoren/vim-gotobracket
