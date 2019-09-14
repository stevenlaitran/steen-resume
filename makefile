filename=resume-wrapper.tex

pdf:
	pdflatex -output-directory=output resume-wrapper.tex
	ls output | grep -v .pdf | xargs -I % rm -v output/%

clean:
	rm output/*