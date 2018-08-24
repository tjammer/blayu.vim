" File              : autoload/lightline/colorscheme/blayu.vim
" Author            : Tobias Jammer <tobiasjammer@gmail.com>
" Date              : 24.08.2018
" Last Modified Date: 24.08.2018

let s:text      = [ '#e6e0cf', 253 ]
let s:bg        = [ '#0e2133', 222 ]
let s:fg        = [ '#7390bf', 234 ]
let s:insert    = [ '#dfb46a', 222 ]
let s:replace   = [ '#df6a6a', 222 ]
let s:visual    = [ '#73b8bf', 222 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:bg, s:fg ], [ s:fg, s:bg ] ]
let s:p.normal.middle   = [ [ s:text, s:bg ] ]
let s:p.normal.right    = [ [ s:bg, s:fg, 'bold' ], [s:bg, s:fg] ]
let s:p.normal.error    = [ [ s:replace, s:bg, 'bold' ] ]
let s:p.normal.warning  = [ [ s:replace, s:bg, 'bold' ] ]


let s:p.insert.left     = [ [ s:bg, s:insert ], [ s:insert, s:bg ] ]
let s:p.replace.left     = [ [ s:bg, s:replace ], [ s:replace, s:bg ] ]
let s:p.visual.left     = [ [ s:bg, s:visual ], [ s:visual, s:bg ] ]

let s:p.tabline.left    = [ [ s:text, s:bg ] ]
let s:p.tabline.tabsel  = [ [ s:bg, s:fg, 'bold' ] ]

let g:lightline#colorscheme#blayu#palette = lightline#colorscheme#flatten(s:p)
