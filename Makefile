PAPER=paper.tex

all:
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -f *.log *.toc *.aux *.pyg
	rm -rf _minted-main

watch:
	while [ 1 ]; do;          \
    sleep 1;            \
    make all;              \
    echo "\n----------\n"; \
  done
