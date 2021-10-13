ctan_package: doc/zx.pdf tikzlibraryzx.code.tex zx.sty
	zip zx.zip -j doc/zx.pdf tikzlibraryzx.code.tex zx.sty

doc/zx.pdf: doc/zx.tex
	cd doc && latexmk zx.tex
