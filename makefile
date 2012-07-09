# why-RSA-works/makefile
# Copyright 2012 Peter Franusic.
# All rights reserved.
#

MISC= 	README \
	makefile \

TEXS=   tex/block-diagram.tex \
	tex/conclusions.tex \
	tex/exponent-arithmetic.tex \
	tex/exponential-notation.tex \
	tex/exponential-tables.tex \
	tex/factor-ops.tex \
	tex/hard-problems.tex \
	tex/huge-integers.tex \
	tex/intro.tex \
	tex/main.tex \
	tex/mappings.tex \
	tex/modex-15.tex \
	tex/modex-33-arrows.tex \
	tex/modex-33-cols.tex \
	tex/modex-33.tex \
	tex/modex-function.tex \
	tex/mult-plus-one.tex \
	tex/multiple-plus-one.tex \
	tex/oplus-15.tex \
	tex/oplus-operator.tex \
	tex/otimes-15.tex \
	tex/otimes-operator.tex \
	tex/references.tex \
	tex/rings.tex \
	tex/set-Zn.tex \
	tex/simple-proof.tex \
	tex/simulation.tex \
	tex/wallpaper.tex \


why-RSA-works.pdf:	${TEXS}$
			cd tex/; pdflatex main.tex
			cd tex/; pdflatex main.tex
			cd tex/; mv main.pdf ../why-RSA-works.pdf

why-RSA-works.tar:	${TEXS}$ ${MISC}$
			tar -cvf why-RSA-works.tar ${MISC}$ ${TEXS}$ why-RSA-works.pdf

clean:			
			rm *~ *.aux *.log

