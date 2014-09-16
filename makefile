# Makefile for the talk
COMPILER = pdflatex
READER = evince

talk.pdf: talk.tex
	$(COMPILER) $<
	
read: talk.pdf
	$(READER) $<
	
spell: talk.tex
	ispell $<
	
coffee: 
	@echo "You are not allowed."
	
clean:
	rm -f *.aux *.log *~