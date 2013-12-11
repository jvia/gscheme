all: timpcore tuscheme tex

tex: list.tex
	pdflatex list.tex

test-timpcore: timpcore
	cat src/tests.ic | ./src/timpcore -q

test-tuscheme: tuscheme
	cat src/11.scm src/tests.scm | ./src/tuscheme -q

test-11: tuscheme
	cat src/11.scm | ./src/tuscheme -q

timpcore: src/timpcore.sml
	mlton src/timpcore.sml

tuscheme: src/tuscheme.sml
	mlton src/tuscheme.sml
