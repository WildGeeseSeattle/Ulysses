TARGET=Circe

all: pdf1

pdf1: $(TARGET)-I.pdf

%.pdf: %.tex ../15-Circe/defs.tex ../15-Circe/Circe1.tex
	tectonic $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
