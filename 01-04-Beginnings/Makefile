TARGET=telypso

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../01-Telemachus/telemachus-*.tex ../04-Calypso/calypso-*.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
