all: timpcore tuscheme tex

tex: list.tex
	pdflatex list.tex

test-timpcore: timpcore
	cat src/tests.ic | ./src/timpcore -q

test-tuscheme: tuscheme
	cat src/tests.scm | ./src/tuscheme -q

timpcore: src/timpcore.sml
	mlton src/timpcore.sml

tuscheme: src/tuscheme.sml
	mlton src/tuscheme.sml
