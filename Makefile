ROOT=$(shell kpsewhich -expand-var='$$TEXMFHOME')

install: ${ROOT}/tex/latex
	@echo "*** installing/updating ecrc-procs LaTeX class in ${ROOT}..."
	@rm -rf $</elsarticle
	@cp -r ecrc-procs $</elsarticle

${ROOT}/tex/latex:
	mkdir -p $@

clean:
	@rm -f *.{aux,pdf,log,bbl,synctex.gz,blg,spl}
	@rm -f .*.lb
