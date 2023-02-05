TARGET=OxenOfTheSun

all: pdf

pdf: $(TARGET).pdf

%.pdf : %.tex defs.tex
	tectonic $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz
