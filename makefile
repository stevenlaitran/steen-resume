first_name := $(shell jq '.configs.first_name' configs/configs.json)
last_name := $(shell jq '.configs.last_name' configs/configs.json)

pdf:
	@echo -e "**********************************" '\n'
	@echo -e First name:'\t' $(first_name)
	@echo -e Last name:'\t' $(last_name)
	@echo -e '\n' "**********************************"
	ls output | grep -v resume-example.pdf | xargs -I % rm -v output/%
	pdflatex -jobname=$(first_name)_$(last_name)_resume_$(shell date "+%Y_%m_%d") -output-directory=output resume-wrapper.tex
	ls output | grep -v .pdf | xargs -I % rm -v output/%

clean:
	rm output/*