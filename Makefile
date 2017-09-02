TARGET=main
NAME=EstudioFunciones

SCHEME_INPUT=\\def\\scheme{}\\input{$(TARGET)}.tex}
SCHEME_NAME=$(NAME)_esquema.pdf

FULL_INPUT=\\input{$(TARGET)}.tex}
FULL_NAME=$(NAME)_esquema.pdf


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
	rm -r *sage*
	latexmk -C
