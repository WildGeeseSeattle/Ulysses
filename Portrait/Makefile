TARGET=xmas-parnell

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
