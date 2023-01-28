GITDIR=~/stuff/Writing/Ulysses/14-OxenOfTheSun
DROPDIR=~/Dropbox/14-OxenOfTheSun
TARGET=OxenOfTheSun

all: pdf mirror

pdf: $(TARGET).pdf

%.pdf : %.tex
	xelatex $<

mirror:
	rsync -av $(DROPDIR)/Makefile $(DROPDIR)/*.tex $(DROPDIR)/*.vim $(DROPDIR)/*.pdf $(GITDIR)
	rsync -av $(GITDIR)/Makefile  $(GITDIR)/*.tex  $(GITDIR)/*.vim                   $(DROPDIR)

clean:
	-rm *.log *.aux *.pdf *.synctex.gz
