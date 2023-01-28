TARGET=nestorlotus

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../02-Nestor/nestor-*.tex ../05-TheLotusEaters/lotuseaters-*.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
