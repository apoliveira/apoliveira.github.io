all: pdf tidy

pdf: AndrePOliveiraCV.pdf

cv.tex: data.yml prepyaml.js modern.tex
	pandoc -o cv.tex --standalone --template=modern.tex data.yml

AndrePOliveiraCV.pdf: data.yml prepyaml.js modern.tex
	pandoc -o AndrePOliveiraCV.pdf --standalone --template=modern.tex data.yml

data.yml:
	node prepyaml.js

tidy:
	rm -f AndrePOliveiraCV.tex
	rm -f data.yml

clean:
	rm -f AndrePOliveiraCV.pdf
	rm -f AndrePOliveiraCV.tex
	rm -f data.yml
