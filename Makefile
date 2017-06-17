TARGET=main

all: sage
	pdflatex $(TARGET) 

latex: tex/ $(TARGET).tex
	pdflatex $(TARGET) 	

sage: latex
	sage $(TARGET).sagetex.sage

resage:
	pdflatex $(TARGET)
	sage $(TARGET).sagetex.sage

clean:
	rm *sage*
	latexmk -C