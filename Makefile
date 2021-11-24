all: main.pdf

view: main.pdf
	xdg-open main.pdf &

main.pdf:
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex
	rm -f *.log *.toc *.aux *.pyg
	rm -rf _minted-main

clean:
	rm main.pdf
