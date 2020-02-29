COMBINE = "/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py"
FILES := $(shell find appendix/*.pdf -exec echo {} \; | tr "\n" " ")

all: CV_Marius_Hegele.pdf 

tex/cv.pdf: tex/cv.tex
	cd tex && pdflatex cv.tex

CV_Marius_Hegele.pdf: tex/cv.pdf 
	$(COMBINE) -o $@ $< $(FILES)
