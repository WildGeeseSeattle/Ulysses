Scripts for the staged readings of James Joyce's "Ulysses",
as performed by the [Wild Geese Players of Seattle](https://www.WildGeeseSeattle.org/)

# Building the scripts

## Prerequisites

* Install TeX. Specifically, you want the XeLaTeX flavor of LaTeX.

  * Mac: install [MacTeX](http://www.tug.org/mactex/)
  * Windows or Linux: install [TeX Live](http://www.tug.org/texlive/)

* Install the [Libertinus fonts](https://github.com/alif-type/libertinus/releases)

* Install a PDF viewer, if you don't have one already

  * Mac: use Preview (built-in) or install [Skim](https://skim-app.sourceforge.io/)
  * Windows: install [Adobe Acrobat](https://acrobat.adobe.com/)

## Building a Script

Open a terminal window on the directory (folder) containing the script; e.g. `11-Sirens`:

* Windows: [open Command Prompt on a folder](https://www.techsupportalert.com/content/how-open-windows-command-prompt-any-folder.htm)
* Mac: [open Terminal on a folder](https://www.howtogeek.com/210147/how-to-open-terminal-in-the-current-os-x-finder-location/)

If you have [Gnu Make](https://www.gnu.org/software/make/), you can build the script with `make pdf`

Otherwise, run `xelatex` against the main TeX file; e.g., `xelatex sirens.tex`
