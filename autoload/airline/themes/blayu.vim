" vi:syntax=vim

" base16-vim-airline (https://github.com/jfelcner/base16-vim-airline-template)
" by Jeff Felchner (http://jefffelchner.com)
" originally by Charuvahan Adhivarahan (https://github.com/chartoin)
" blayu scheme by Tobias Jammer (https://github.com/tjammer)

let g:airline#themes#blayu#palette = {}
let s:gui00 = "#0E2133"
let s:gui01 = "#DFB46A"
let s:gui02 = "#1e364c"
let s:gui03 = "#5c7b99"
let s:gui04 = "#5c7b99"
let s:gui05 = "#5C7B99"
let s:gui06 = "#e6e0cf"
let s:gui07 = "#0e2133"
let s:gui08 = "#DF6A6A"
let s:gui09 = "#DF6A6A"
let s:gui0A = "#73B8BF"
let s:gui0B = "#DFB46A"
let s:gui0C = "#7390BF"
let s:gui0D = "#73B8BF"
let s:gui0E = "#7390BF"
let s:gui0F = "#e6e0cf"

let s:cterm00 = 0
let s:cterm01 = 18
let s:cterm02 = 19
let s:cterm03 = 8
let s:cterm04 = 20
let s:cterm05 = 7
let s:cterm06 = 21
let s:cterm07 = 15
let s:cterm08 = 1
let s:cterm09 = 16
let s:cterm0A = 3
let s:cterm0B = 2
let s:cterm0C = 6
let s:cterm0D = 4
let s:cterm0E = 5
let s:cterm0F = 17

let s:N1   = [ s:gui06, s:gui00, s:cterm01, s:cterm0B ]
let s:N2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:N3   = [ s:gui06, s:gui00, s:cterm09, s:cterm01 ]
let g:airline#themes#blayu#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui00, s:gui01, s:cterm01, s:cterm0D ]
let s:I2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:I3   = [ s:gui06, s:gui00, s:cterm09, s:cterm01 ]
let g:airline#themes#blayu#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui00, s:gui08, s:cterm01, s:cterm08 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:R3   = [ s:gui06, s:gui00, s:cterm09, s:cterm01 ]
let g:airline#themes#blayu#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui00, s:gui0A, s:cterm01, s:cterm0E ]
let s:V2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:V3   = [ s:gui06, s:gui00, s:cterm09, s:cterm01 ]
let g:airline#themes#blayu#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui05, s:gui00, s:cterm05, s:cterm01 ]
let s:IA2   = [ s:gui05, s:gui02, s:cterm05, s:cterm01 ]
let s:IA3   = [ s:gui05, s:gui00, s:cterm05, s:cterm01 ]
let g:airline#themes#blayu#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#blayu#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
