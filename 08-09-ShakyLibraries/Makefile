TARGET=lestryscylla

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex defs.tex ../08-Lestrygonians/lestrygonians-2.tex ../09-ScyllaAndCharybdis/scylla-and-charybdis-1.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
