all: pdf

pdf: cv.pdf

cv.tex: data.yml prepyaml.js template.tex
	pandoc -o cv.tex --standalone --template=template.tex data.yml

cv.pdf: data.yml prepyaml.js template.tex
	pandoc -o cv.pdf --standalone --template=template.tex data.yml

data.yml:
	node prepyaml.js

clean:
	rm -f cv.pdf
	rm -f data.yml
