TARGET=proteus_hades

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../03-Proteus/proteus-*.tex ../06-Hades/hades-*.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
