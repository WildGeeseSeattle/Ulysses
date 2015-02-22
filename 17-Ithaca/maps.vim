
" ;- => selection -> --- selection ---
vnoremap <buffer> <silent> ;- <Esc>`>c$ ---<Esc>`<i--- <Esc>gv>
" ;s => selection -> \stage{selection}
vnoremap <buffer> <silent> ;s <Esc>`>a}<Esc>`<i\stage{<Esc>
" ;S => SELECTION -> \stage{selection}
vnoremap <buffer> <silent> ;S u`>a}<Esc>`<i\stage{<Esc>
" ;l => SELECTION -> \latin{selection}
vnoremap <buffer> <silent> ;l u`>a}<Esc>`<i\latin{<Esc>
" ;h => SELECTION -> \hebrew{selection}
vnoremap <buffer> <silent> ;h u`>a}<Esc>`<i\hebrew{<Esc>
" ;y => SELECTION -> \yiddish{selection}
vnoremap <buffer> <silent> ;y u`>a}<Esc>`<i\yiddish{<Esc>
" ;f => SELECTION -> \french{selection}
vnoremap <buffer> <silent> ;f u`>a}<Esc>`<i\french{<Esc>
" ;g => SELECTION -> \german{selection}
vnoremap <buffer> <silent> ;g u`>a}<Esc>`<i\german{<Esc>
" ;G => SELECTION -> \greek{selection}
vnoremap <buffer> <silent> ;G u`>a}<Esc>`<i\greek{<Esc>
" ;E => SELECTION -> \spanish{selection}
vnoremap <buffer> <silent> ;E u`>a}<Esc>`<i\spanish{<Esc>
" ;i => SELECTION -> \italian{selection}
vnoremap <buffer> <silent> ;i u`>a}<Esc>`<i\italian{<Esc>
" ;I => SELECTION -> \irish{selection}
vnoremap <buffer> <silent> ;I u`>a}<Esc>`<i\irish{<Esc>
" ;t => SELECTION -> \Title{selection}
vnoremap <buffer> <silent> ;t u`>a}<Esc>`<i\Title{<Esc>
" ;v => selection -> \begin{verse}\rselection\r\end{verse}
vnoremap <buffer> <silent> ;v <Esc>`>o<C-D>\end{verse}<Esc>`<O<C-D>\begin{verse}<Esc>

" | => append " |" to line
nnoremap <buffer> <silent> \| A \|<Esc>
" ;m => reformat NAME: to \Name:
nnoremap <buffer> <silent> ;m 0i\<Esc>2lguw
" ;n => reformat A NAME: to \Name:
nnoremap <buffer> <silent> ;n 0cf \<Esc>2lguw
" ;N => reformat SOME NAME: to \SomeName:
nnoremap <buffer> <silent> ;N 0i\<Esc>2lguwf xlguw
" ;r => reformat \SomeName: to \newcommand{\SomeName}{\role{SomeName}}
nnoremap <buffer> <silent> ;r $x0lywI\newcommand{<Esc>A}{\role{}}<Esc>hPb

" ;d => puts previous \gab+10 after current line
nnoremap <buffer> <silent> ;d ma?\\gab<Cr>yy'ap2w10<C-A>zz

" ;1 => Change current \Name: to \Name[1]:
nnoremap <buffer> <silent> ;1 $i[1]<Esc>

" ;2 => Change current \Name: to \Name[2]:
nnoremap <buffer> <silent> ;2 $i[2]<Esc>

" -0 => \stage{( some text )}  ->  some text
vnoremap <buffer> <silent> -0 <Esc>`>h2x`<8x

" -1 => \stage{( some text )}  ->  N1: Some text.
vnoremap <buffer> <silent> -1 <Esc>`>hC.<Esc>`<8cl\N1:<CR><Esc>~

" -2 => \stage{( some text )}  ->  N2: Some text.
vnoremap <buffer> <silent> -2 <Esc>`>hC.<Esc>`<8cl\N2:<CR><Esc>~

" \1 => \stage{(Some text.)}  ->  N1: Some text.
vnoremap <buffer> <silent> \1 <Esc>`>hD`<8cl\N1:<CR><Esc>

" \2 => \stage{(Some text.)}  ->  N2: Some text.
vnoremap <buffer> <silent> \2 <Esc>`>hD`<8cl\N2:<CR><Esc>

" nnoremap <silent> ;n1 0gUli\N1:<CR><Esc>
nnoremap <silent> ;n1 0i<CR>\N1:<CR><Esc>
nnoremap <silent> ;n2 0i<CR>\N2:<CR><Esc>
nnoremap <silent> ;n3 0i<CR>\N3:<CR><Esc>
nnoremap <silent> ;n4 0i<CR>\N4:<CR><Esc>
nnoremap <silent> ;n5 0i<CR>\N5:<CR><Esc>
nnoremap <silent> ;n6 0i<CR>\N6:<CR><Esc>

nnoremap <silent> ;aa 0i\A:<CR><Esc>
nnoremap <silent> ;qq 0i\Q:<CR><Esc>
nnoremap <silent> ;q1 0i\Q1:<CR><Esc>
nnoremap <silent> ;q2 0i\Q2:<CR><Esc>
nnoremap <silent> ;al 02x0i\All:<CR><Esc>
nnoremap <silent> ;bi 02x0i\BloomInt:<CR><Esc>
nnoremap <silent> ;bl 02x0i\Bloom:<CR><Esc>
nnoremap <silent> ;sd 02x0i\Stephen:<CR><Esc>

" Adjust \A:
nnoremap <silent> ;fa 0C\Factual<Esc>
nnoremap <silent> ;ho 0C\Household<Esc>
nnoremap <silent> ;me 0C\Memories<Esc>
nnoremap <silent> ;ph 0C\Philosophy<Esc>
nnoremap <silent> ;pl 0C\Places<Esc>
nnoremap <silent> ;po 0C\Poetry<Esc>
nnoremap <silent> ;re 0C\Religious<Esc>
nnoremap <silent> ;sc 0C\Science<Esc>

nnoremap <silent> ;ac 0i\acting{<C-R>*}<CR><CR><Esc>
nnoremap <silent> ;ad 0C\Adverts<Esc>
nnoremap <silent> ;fl 0C\Factual[~(legal)]<Esc>
nnoremap <silent> ;pe 0C\Poetry[~(emotion)]<Esc>
nnoremap <silent> ;th 0C\Theater<Esc>
nnoremap <silent> ;tu 0C\Turns<Esc>
nnoremap <silent> ;bl 0C\Bloom<Esc>
nnoremap <silent> ;sd 0C\Stephen<Esc>

nnoremap <silent> ;x  0o<CR><Esc>

nnoremap <silent> ;(  i\paren{<Esc>l%a}<Esc>l
nnoremap <silent> ;{  i<CR>\paren{<Esc>l%a}<Esc>l
