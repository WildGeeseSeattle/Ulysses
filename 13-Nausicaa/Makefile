TARGET=nausikaa

all: pdf

pdf: $(TARGET).pdf

%.pdf: %.tex %-1.tex defs.tex
	xelatex $<

# Abbreviated reading
%2.pdf: %2.tex %-2.tex defs.tex
	xelatex $<

clean:
	-rm *.log *.aux *.pdf *.synctex.gz *.zip
