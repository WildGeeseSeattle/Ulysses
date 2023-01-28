TARGET=OxenOfTheSun

all: pdf

pdf: $(TARGET).pdf

%.pdf : %.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz
