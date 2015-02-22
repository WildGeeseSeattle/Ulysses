GITDIR=~/stuff/Writing/Ulysses/17-Ithaca
DROPDIR=~/Dropbox/WildGeese/17-ithaca
FTPDIR=~/Sites/WildGeeseSeattle/public_html/private/Ithaca
TARGET=ithaca

all: pdf mirror

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex
	xelatex $<

ftp:
	rsync -av $(TARGET).pdf $(FTPDIR)

mirror:
	rsync -av $(DROPDIR)/Makefile $(DROPDIR)/*.tex $(DROPDIR)/*.txt $(DROPDIR)/*.vim $(DROPDIR)/*.pdf $(GITDIR)
	rsync -av $(GITDIR)/Makefile  $(GITDIR)/*.tex  $(GITDIR)/*.vim                   $(DROPDIR)

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip

zip:
	-rm $(TARGET).zip
	zip $(TARGET).zip 0readme.txt *.tex $(TARGET).txt Makefile *.ttf *.vim *.pdf
