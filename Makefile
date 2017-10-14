TARGET=Resume

default: pdf

pdf: $(TARGET).tex
	latexmk $(TARGET).tex
	dvipdfm $(TARGET).dvi

html: $(TARGET).tex
	htlatex $(TARGET).tex	

clean-latexmk:
	rm $(TARGET).aux
	rm $(TARGET).log
	rm $(TARGET).fls
	rm $(TARGET).fdb_latexmk
	rm $(TARGET).dvi
	rm $(TARGET).out

clean: clean-latexmk

clean-pdf: clean
	rm $(TARGET).pdf

clean-html: 
	rm $(TARGET).aux
	rm $(TARGET).log
	rm $(TARGET).4tc
	rm $(TARGET).4ct
	rm $(TARGET).idv
	rm $(TARGET).lg
	rm $(TARGET).tmp
	rm $(TARGET).xref
	rm $(TARGET).dvi

