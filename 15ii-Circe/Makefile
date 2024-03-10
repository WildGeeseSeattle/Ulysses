TARGET=Circe

all: pdf2

pdf2: $(TARGET)-II.pdf

%.pdf: %.tex ../15-Circe/defs.tex ../15-Circe/Circe2.tex
	tectonic $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
