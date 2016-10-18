PROJECT      = Paper
TEX_FILE     = $(PROJECT).tex

all:
	pdflatex $(TEX_FILE)
	bibtex $(PROJECT)
	pdflatex $(TEX_FILE)
	pdflatex $(TEX_FILE)

clean:
	$(RM) $(PROJECT).aux $(PROJECT).bbl $(PROJECT).blg $(PROJECT).log

fclean: clean
	$(RM) $(PROJECT).pdf
