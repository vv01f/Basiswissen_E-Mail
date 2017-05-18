TEXFILE=Basiswissen_E-Mail
CDOBJ=cd obj

all: build ready

build:
	${CDOBJ} && \
		pdflatex ../src/${TEXFILE}.tex
	${CDOBJ} && \
		pdflatex ../src/${TEXFILE}.tex
	${CDOBJ} && \
		pdflatex ../src/${TEXFILE}.tex

ready:
	mv obj/${TEXFILE}.pdf ./

prepare:
	mkdir -p ../obj;
	mkdir -p ../src;
	mkdir -p ../images;
