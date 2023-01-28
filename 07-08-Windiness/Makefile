TARGET=aeolygians

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../07-Aeolus/aeolus-1.tex ../08-Lestrygonians/lestrygonians-1.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
