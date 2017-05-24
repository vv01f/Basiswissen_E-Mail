TEXFILE=Basiswissen_E-Mail
CDOBJ=cd obj

.PHONY: all

all: prepare build ready

build:
	${CDOBJ} && \
		pdflatex ../src/${TEXFILE}.tex
	${CDOBJ} && \
		pdflatex ../src/${TEXFILE}.tex
	${CDOBJ} && \
		pdflatex ../src/${TEXFILE}.tex

ready:
	mv obj/${TEXFILE}.pdf ./$$(date +"%Y%m%dT%H%M%S")"-"${TEXFILE}".pdf"

prepare:
	mkdir -p ./obj;
	mkdir -p ./src;
	mkdir -p ./images;
