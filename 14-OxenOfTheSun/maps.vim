nnoremap <silent> ;n0 0i<Bar>N0<Bar> <Esc>
nnoremap <silent> ;n1 0i<Bar>N1<Bar> <Esc>
nnoremap <silent> ;n2 0i<Bar>N2<Bar> <Esc>
nnoremap <silent> ;n3 0i<Bar>N3<Bar> <Esc>
nnoremap <silent> ;al 0i<Bar>All<Bar> <Esc>
nnoremap <silent> ;ba 0i<Bar>Ba<Bar> <Esc>
nnoremap <silent> ;bl 0i<Bar>Bl<Bar> <Esc>
nnoremap <silent> ;cr 0i<Bar>Cr<Bar> <Esc>
nnoremap <silent> ;dx 0i<Bar>Dx<Bar> <Esc>
nnoremap <silent> ;ln 0i<Bar>Ln<Bar> <Esc>
nnoremap <silent> ;ly 0i<Bar>Ly<Bar> <Esc>
nnoremap <silent> ;md 0i<Bar>Md<Bar> <Esc>
nnoremap <silent> ;mu 0i<Bar>Mu<Bar> <Esc>
nnoremap <silent> ;nc 0i<Bar>nc<Bar> <Esc>
nnoremap <silent> ;nq 0i<Bar>nq<Bar> <Esc>
nnoremap <silent> ;pc 0i<Bar>PC<Bar> <Esc>
nnoremap <silent> ;sd 0i<Bar>SD<Bar> <Esc>
"
vnoremap <silent> ;cm :s/^/.. /<Bar>noh<CR>
"
" function! TagSeln(map, tag)
"     execute "vnoremap <silent> ;" . a:map . " <Esc>" .
"     \   "`>" . "a</" . a:tag . "><Esc>" .
"     \   "`<" . "i<" . a:tag . "><Esc>".
"     \   "`><CR><CR>"
" endfunction
" 
" function! TagSeln1(map, tag)
"     execute "vnoremap <silent> ;" . a:map . " <Esc>" .
"     \   "`>" . "a</" . a:tag . "><Esc>" .
"     \   "`<" . "i<" . a:tag . "><Esc>".
"     \   "`>"
" endfunction
"
"
" call TagSeln("al", "all")
" call TagSeln("bg", "bergan")
" call TagSeln("bl", "bloom")
" call TagSeln("ci", "citizen")
" call TagSeln("cr", "crofton")
" call TagSeln("cu", "cunningham")
" call TagSeln("do", "doran")
" call TagSeln("em", "em")
" call TagSeln("fr", "french")
" call TagSeln("ge", "german")
" call TagSeln("go", "garryowen")
" call TagSeln("jo", "joe")
" call TagSeln("ir", "irish")
" call TagSeln("jj", "jjomolloy")
" call TagSeln("jw", "johnwyse")
" call TagSeln("la", "latin")
" call TagSeln("lm", "lambert")
" call TagSeln("ln", "lenehan")
" call TagSeln1("om", "omit")
" call TagSeln("pw", "power")
" call TagSeln("rg", "ragamuffin")
" call TagSeln("sg", "stage")
" call TagSeln("ti", "title")
" call TagSeln("to", "tomlinson")
" call TagSeln("ty", "terry")
" call TagSeln("af", "allfours")
" call TagSeln("co", "conacre")
" call TagSeln("or", "oreilly")
" call TagSeln("sw", "staylewit")
" call TagSeln("sp", "speaker")
" call TagSeln("nq", "nq")
" call TagSeln("n1", "n1")
" call TagSeln("n2", "n2")
" call TagSeln("n3", "n3")
