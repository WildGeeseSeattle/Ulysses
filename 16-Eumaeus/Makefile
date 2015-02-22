GITDIR=~/stuff/Writing/Ulysses/16-Eumaeus
DROPDIR=~/Dropbox/16-Eumaeus
TARGET=eumaeus

all: pdf mirror

pdf: $(TARGET).pdf

%.pdf : %.tex
	xelatex $<

mirror:
	rsync -av $(DROPDIR)/Makefile $(DROPDIR)/*.tex $(DROPDIR)/*.vim $(DROPDIR)/*.pdf $(GITDIR)
	rsync -av $(GITDIR)/Makefile  $(GITDIR)/*.tex  $(GITDIR)/*.vim                   $(DROPDIR)

clean:
	-rm *.log *.aux *.pdf *.synctex.gz
