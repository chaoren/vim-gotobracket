# Go to unmatched '[' and ']'

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
