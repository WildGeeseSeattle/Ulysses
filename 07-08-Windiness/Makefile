GITDIR=~/stuff/Writing/Ulysses/07-08-Windiness
DROPDIR=~/Dropbox/WildGeese/07-08-Windiness
FTPDIR=~/Sites/wildgeeseseattle/private/Aeolygians
TARGET=aeolygians

all: pdf mirror

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../07-Aeolus/aeolus-1.tex ../08-Lestrygonians/lestrygonians-1.tex
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
