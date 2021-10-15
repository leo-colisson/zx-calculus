ctan_package: doc/zx-calculus.pdf doc/zx-calculus.tex tikzlibraryzx-calculus.code.tex zx-calculus.sty README.md
	rm -rf build_ctan
	mkdir -p build_ctan/zx-calculus
	cp $^ build_ctan/zx-calculus/
# On CTAN the file won't be in doc:
	sed -i 's#`doc/#`#g' build_ctan/zx-calculus/README.md
	sed -i 's#\\input{../tikzlibraryzx-calculus.code.tex}#\\usetikzlibrary{zx-calculus}#g' build_ctan/zx-calculus/zx-calculus.tex
	cd build_ctan && zip zx-calculus.zip -r zx-calculus && mv zx-calculus.zip ..

doc/zx-calculus.pdf: doc/zx-calculus.tex
	cd doc && latexmk zx-calculus.tex
