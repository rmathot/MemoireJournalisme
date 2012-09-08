all: generatepdf clean
	

generatepdf: 
	-@rubber --inplace -d src/document.tex

clean: 
	-@rm src/document.aux
	-@rm src/document.toc
	-@rm src/document.log
	-@rm src/document.out
	-@rm src/document.blg
	-@rm src/document.bbl

delbin:
	-@rm src/document.pdf

delst:
	-@rm src/document.synctex.gz

empty: delbin delst
	

mrproper: delbin all
	

