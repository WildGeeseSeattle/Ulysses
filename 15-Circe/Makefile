TARGET=Circe

all: pdf1 pdf2

pdf1: $(TARGET)1.pdf

pdf2: $(TARGET)2.pdf

%.pdf: %.tex defs.tex
	tectonic $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
