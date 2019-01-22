
" ;- => selection -> --- selection ---
vnoremap <buffer> <silent> ;- <Esc>`>c$ ---<Esc>`<i--- <Esc>gv>
" ;s => selection -> \stage{selection}
vnoremap <buffer> <silent> ;s <Esc>`>a}<Esc>`<i\stage{<Esc>
" ;S => SELECTION -> \stage{selection}
vnoremap <buffer> <silent> ;S u`>a}<Esc>`<i\stage{<Esc>
" ;e => selection -> \emph{selection}
vnoremap <buffer> <silent> ;e u`>a}<Esc>`<i\emph{<Esc>
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
" ;q => selection -> \Quote{selection}
vnoremap <buffer> <silent> ;q u`>a}<Esc>`<i\Quote{<Esc>
" ;t => SELECTION -> \Title{selection}
vnoremap <buffer> <silent> ;t u`>a}<Esc>`<i\Title{<Esc>
" ;v => selection -> \begin{verse}\rselection\r\end{verse}
vnoremap <buffer> <silent> ;v <Esc>`>o<C-D>\end{verse}<Esc>`<O<C-D>\begin{verse}<Esc>
" ;z => selection -> \sout{selection}
vnoremap <buffer> <silent> ;z <Esc>`>a}<Esc>`<i\sout{<Esc>


" | => append " |" to line
nnoremap <buffer> <silent> \| A \|<Esc>
" ;; => insert " |", break line
nnoremap <buffer> <silent> ;; s \|<CR><Esc>
" ;m => reformat NAME: to \Name:
nnoremap <buffer> <silent> ;m 0i\<Esc>2lguw
" ;n => reformat A NAME: to \Name:
nnoremap <buffer> <silent> ;n 0cf \<Esc>2lguw
" ;N => reformat SOME NAME: to \SomeName:
nnoremap <buffer> <silent> ;N 0i\<Esc>2lguwf xlguw
" ;r => reformat \SomeName: to \newcommand{\SomeName}{\role{SomeName}}
nnoremap <buffer> <silent> ;r $x0lywI\newcommand{<Esc>A}{\role{}}<Esc>hPb

" ;D => puts previous \gab+10 after current line
nnoremap <buffer> <silent> ;D ma?\\gab<Cr>yy'ap2w10<C-A>zz

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

nnoremap <silent> ;f1 0i<CR>\F1:<CR><Esc>
nnoremap <silent> ;f2 0i<CR>\F2:<CR><Esc>
nnoremap <silent> ;f3 0i<CR>\F3:<CR><Esc>
nnoremap <silent> ;f4 0i<CR>\F4:<CR><Esc>
nnoremap <silent> ;f5 0i<CR>\F5:<CR><Esc>
nnoremap <silent> ;f6 0i<CR>\F6:<CR><Esc>

nnoremap <silent> ;m1 0i<CR>\M1:<CR><Esc>
nnoremap <silent> ;m2 0i<CR>\M2:<CR><Esc>
nnoremap <silent> ;m3 0i<CR>\M3:<CR><Esc>
nnoremap <silent> ;m4 0i<CR>\M4:<CR><Esc>
nnoremap <silent> ;m5 0i<CR>\M5:<CR><Esc>
nnoremap <silent> ;m6 0i<CR>\M6:<CR><Esc>

nnoremap <silent> ;aa 0i\A:<CR><Esc>
nnoremap <silent> ;qq 0i\Q:<CR><Esc>
nnoremap <silent> ;q1 0i\Q1:<CR><Esc>
nnoremap <silent> ;q2 0i\Q2:<CR><Esc>
nnoremap <silent> ;al 0i\All:<CR><Esc>

nnoremap <silent> ;bl 02xi\Bloom:<CR><Esc>
nnoremap <silent> ;bi 0i<CR>\BloomInt:<CR><Esc>
nnoremap <silent> ;sd 02xi\Stephen:<CR><Esc>
nnoremap <silent> ;si 0i<CR>\StephenInt:<CR><Esc>

nnoremap <silent> ;cm 02xi\conmee:<CR><Esc>
nnoremap <silent> ;ci 0i\conmeeint:<CR><Esc>
nnoremap <silent> ;ms 02xi\mrssheehy:<CR><Esc>
nnoremap <silent> ;bd 02xi\boody:<CR><Esc>
nnoremap <silent> ;kd 02xi\katey:<CR><Esc>
nnoremap <silent> ;md 02xi\maggy:<CR><Esc>
nnoremap <silent> ;bb 02xi\boylan:<CR><Esc>
nnoremap <silent> ;by 02xi\boy{}:<CR><Esc>
nnoremap <silent> ;gl 02xi\girl{}:<CR><Esc>
nnoremap <silent> ;bg 02xi\blondgirl:<CR><Esc>
nnoremap <silent> ;aa 02xi\artifoni:<CR><Esc>
nnoremap <silent> ;du 02xi\missdunne:<CR><Esc>
nnoremap <silent> ;di 02xi\dunneint:<CR><Esc>

nnoremap <silent> ;x  0o<CR><Esc>
nnoremap <silent> ;h  A \|<Esc>j2dd

nnoremap <silent> ;(  i\paren{<Esc>l%a}<Esc>l
nnoremap <silent> ;{  i<CR>\paren{<Esc>l%a}<Esc>l
