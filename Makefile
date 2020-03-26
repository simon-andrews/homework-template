all: main.pdf main_gradescope.pdf

clean:
	git clean -Xf

main.pdf: main.tex
	pdflatex main.tex

main_gradescope.pdf: main.tex
	pdflatex -jobname=main_gradescope "\newcommand{\cmdlinegradescope}{} \input{main.tex}"

.PHONY: all clean
