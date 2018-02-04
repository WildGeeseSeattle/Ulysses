GITDIR=~/stuff/Writing/Ulysses/09-ScyllaAndCharybdis
DROPDIR=~/Dropbox/WildGeese/09-ScyllaAndCharybdis
FTPDIR=~/Sites/WildGeeseSeattle/public_html/private/ScyllaAndCharybdis
TEXBIN=/Library/TeX/texbin
TARGET=scylla-and-charybdis

all: pdf mirror

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex
	$(TEXBIN)/xelatex $<

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
