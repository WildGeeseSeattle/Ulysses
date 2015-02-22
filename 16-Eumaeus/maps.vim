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

" ;m => reformat NAME: to \Name:
nnoremap <buffer> <silent> ;m 0i\<Esc>2lguw
" ;n => reformat A NAME: to \Name:
nnoremap <buffer> <silent> ;n 0cf \<Esc>2lguw
" ;N => reformat SOME NAME: to \SomeName:
nnoremap <buffer> <silent> ;N 0i\<Esc>2lguwf xlguw
" ;r => reformat \SomeName: to \newcommand{\SomeName}{\role{SomeName}}
nnoremap <buffer> <silent> ;r $x0lywI\newcommand{<Esc>A}{\role{}}<Esc>hPb

" ;d => puts previous \gab+10 after current line
nnoremap <buffer> <silent> ;d ma?\gab<Cr>yy'ap2w10<C-A>zz

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

nnoremap <silent> ;al 02x0i\All:<CR><Esc>
nnoremap <silent> ;bi 02x0i\BloomInt:<CR><Esc>
nnoremap <silent> ;bl 02x0i\Bloom:<CR><Esc>
nnoremap <silent> ;ca 02x0i\Cabman:<CR><Esc>
nnoremap <silent> ;ca 02x0i\Campbell:<CR><Esc>
nnoremap <silent> ;jv 02x0i\Jarvey:<CR><Esc>
nnoremap <silent> ;l1 02x0i\Loafer1:<CR><Esc>
nnoremap <silent> ;l2 02x0i\Loafer2:<CR><Esc>
nnoremap <silent> ;l3 02x0i\Loafer3:<CR><Esc>
nnoremap <silent> ;lj 02x0i\LordJohnCorley:<CR><Esc>
nnoremap <silent> ;mu 02x0i\Murphy:<CR><Esc>
nnoremap <silent> ;sd 02x0i\Stephen:<CR><Esc>
nnoremap <silent> ;sg 02x0i\SkinTheGoat:<CR><Esc>
nnoremap <silent> ;so 02x0i\Someone:<CR><Esc>
