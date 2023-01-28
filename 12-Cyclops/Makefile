TARGET=cyclops

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex %-1.tex defs.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
