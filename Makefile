TARGET=Estudiodeunafuncion

all: sage
	pdflatex $(TARGET) 

tex:
	pdflatex $(TARGET) 	

sage: tex
	sage $(TARGET).sagetex.sage

resage:
	pdflatex $(TARGET)
	sage $(TARGET).sagetex.sage

clean:
	rm *sage*
	latexmk -C