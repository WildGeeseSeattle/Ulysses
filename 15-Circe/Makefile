TARGET=Circe

all: pdf

pdf: $(TARGET).pdf

%.pdf: Circe*.tex defs.tex
	tectonic $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
