ctan_package: doc/zx-calculus.pdf tikzlibraryzx-calculus.code.tex zx-calculus.sty
	zip zx.zip -j doc/zx-calculus.pdf tikzlibraryzx-calculus.code.tex zx-calculus.sty

doc/zx.pdf: doc/zx-calculus.tex
	cd doc && latexmk zx-calculus.tex
