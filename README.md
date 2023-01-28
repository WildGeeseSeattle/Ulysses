# Scripts for staged readings of James Joyce's *Ulysses*

Scripts for staged readings of James Joyce's *Ulysses*,
as performed by the [Wild Geese Players of Seattle].

Adapted from the 1922 text of *Ulysses* at [Project Gutenberg].

# Scripts

Scripts for each episode.

* [01-Telemachus](./01-Telemachus/)
* [02-Nestor](./02-Nestor/)
* [03-Proteus](./03-Proteus/)
* [04-Calypso](./04-Calypso/)
* [05-TheLotusEaters](./05-TheLotusEaters/)
* [06-Hades](./06-Hades/)
* [07-Aeolus](./07-Aeolus/)
* [08-Lestrygonians](./08-Lestrygonians/)
* [09-ScyllaAndCharybdis](./09-ScyllaAndCharybdis/)
* [10-WanderingRocks](./10-WanderingRocks/)
* [11-Sirens](./11-Sirens/)
* [12-Cyclops](./12-Cyclops/)
* [13-Nausicaa](./13-Nausicaa/)
* [14-OxenOfTheSun](./14-OxenOfTheSun/)
* [15-Circe](./15-Circe/)
* [16-Eumaeus](./16-Eumaeus/)
* [17-Ithaca](./17-Ithaca/)
* [18-Penelope](./18-Penelope/)

## Combined Scripts

To make for better 90–120-minute readings, some episodes have been combined.

* [01-04-Beginnings](./01-04-Beginnings/)
* [02-05-Mornings](./02-05-Mornings/)
* [03-06-Isolation](./03-06-Isolation/)
* [07-08-Windiness](./07-08-Windiness/)
* [08-09-ShakyLibraries](./08-09-ShakyLibraries/)

## Resources

- [RTÉ 25-hour broadcast of Ulysses](http://archive.org/details/Ulysses-Audiobook-Merged)
  ([history](https://www.rte.ie/archives/exhibitions/681-history-of-rte/706-rte-1980s/327476-ulysses-broadcast/))

# Building the scripts

The scripts are typeset from plain-text [LaTeX] `.tex` files.
This allows me to use a set of custom [macros]
to get consistent formatting,
which is independent of the underlying text written by Joyce.
Furthermore, since the `.tex` files
are laid out with a separate clause on each line,
it is very easy to see exactly what changed between each Git commit.
The scripts are *not* edited with a [WYSIWYG] tool,
such as Microsoft Word.

## Prerequisites

* Install [TeX].
  Specifically, you need the [XeLaTeX] flavor of LaTeX,
  which supports Unicode input files, TrueType and OpenType fonts, and PDF generation.

  * Mac: install [MacTeX]
  * Windows or Linux: install [TeX Live]

* Install the [Libertinus fonts]
  to get a high-quality, TeX-friendly seriffed font.

* Install the [Noto Sans fonts]
  to get a sans serif font used in a couple of places.

* Install a [PDF viewer],
  if you don't have one already

  * Mac: use Preview (built-in) or install [Skim]
  * Windows: install [Adobe Acrobat Reader]

* If you want to make changes to the scripts,
  you'll need a good [text editor],
  preferably one with [syntax highlighting]
  for TeX/LaTeX.
  Do *not* use Word, Notepad, or TextEdit: you will regret it.

  * Vim: the `maps.vim` file in each directory provides a set of Vim macros,
    mostly for adding LaTex markup.

* To submit changes as a [pull request], you'll need a [Git client].

## Building a Script

To build the script (create a PDF from the `.tex` file),
you'll need to use the command line.
Open a terminal window on the directory (folder)
containing the script;
e.g. `11-Sirens`:

* Windows: [open Command Prompt on a folder]
* Mac: [open Terminal on a folder]

If you have [Gnu Make],
you can use `make` to build the script:

```bash
make pdf
```

Otherwise, run `xelatex` against the main TeX file:

```bash
xelatex sirens.tex
```

If you see a warning like
"LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right",
you will need to rebuild using `make -B pdf`.


[Wild Geese Players of Seattle]: https://www.WildGeeseSeattle.org/
[Project Gutenberg]: https://www.gutenberg.org/files/4300/4300-h/4300-h.htm
[LaTeX]: https://www.latex-project.org/
[macros]: https://en.wikibooks.org/wiki/LaTeX/Macros
[WYSIWYG]: https://en.wikipedia.org/wiki/WYSIWYG
[TeX]: https://www.tug.org/whatis.html
[XeLaTeX]: https://www.overleaf.com/learn/latex/XeLaTeX
[MacTeX]: http://www.tug.org/mactex/
[TeX Live]: http://www.tug.org/texlive/
[Libertinus fonts]: https://github.com/alerque/libertinus/releases
[Noto Sans fonts]: https://fonts.google.com/noto/specimen/Noto+Sans
[PDF viewer]: https://blog.hubspot.com/marketing/best-free-pdf-reader
[Skim]: https://skim-app.sourceforge.io/
[Adobe Acrobat Reader]: https://acrobat.adobe.com/
[text editor]: https://kinsta.com/blog/best-text-editors/
[syntax highlighting]: https://en.wikipedia.org/wiki/Syntax_highlighting
[pull request]: https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests
[Git client]: https://desktop.github.com/
[open Command Prompt on a folder]: https://www.techsupportalert.com/content/how-open-windows-command-prompt-any-folder.htm
[open Terminal on a folder]: https://www.howtogeek.com/210147/how-to-open-terminal-in-the-current-os-x-finder-location/
[Gnu Make]: https://www.gnu.org/software/make/
