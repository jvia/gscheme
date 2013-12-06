all: timpcore tuscheme tex

tex: list.tex
	pdflatex list.tex

test-timpcore: timpcore
	cat src/tests.ic | ./src/timpcore -q

# test-timpcore: timpcore
# 	cat src/tests.ic | ./src/tuscheme

timpcore: src/timpcore.sml
	mlton src/timpcore.sml

tuscheme: src/tuscheme.sml
	mlton src/tuscheme.sml
