GITDIR=~/stuff/Writing/Ulysses/01-04-Beginnings
DROPDIR=~/Dropbox/WildGeese/01-04-Beginnings
FTPDIR=~/Sites/wildgeeseseattle/private/Telypso
TARGET=telypso

all: pdf mirror

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../01-Telemachus/telemachus-*.tex ../04-Calypso/calypso-*.tex
	xelatex $<

ftp:
	rsync -av $(TARGET).pdf $(FTPDIR)

mirror:
	mkdir -p $(DROPDIR)
	-rsync -av --exclude=p[1-8]*.{tex,pdf} $(DROPDIR)/Makefile $(DROPDIR)/*.tex $(DROPDIR)/*.txt $(DROPDIR)/*.vim $(DROPDIR)/*.pdf $(GITDIR)
	-rsync -av $(GITDIR)/Makefile  $(GITDIR)/*.tex  $(GITDIR)/*.txt  $(GITDIR)/*.vim                   $(DROPDIR)

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip

zip:
	-rm $(TARGET).zip
	zip $(TARGET).zip 0readme.txt *.tex $(TARGET).txt Makefile *.ttf *.vim *.pdf
