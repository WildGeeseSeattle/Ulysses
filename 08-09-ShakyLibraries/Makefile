GITDIR=~/stuff/Writing/Ulysses/08-09-ShakyLibraries
DROPDIR=~/Dropbox/WildGeese/08-09-ShakyLibraries
FTPDIR=~/Sites/wildgeeseseattle/private/LestryScylla
TARGET=lestryscylla

all: pdf mirror

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../08-Lestrygonians/lestrygonians-2.tex ../09-ScyllaAndCharybdis/scylla-and-charybdis-1.tex
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
