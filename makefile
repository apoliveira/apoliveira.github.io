all: pdf tidy
	
push: pdf 
	rm -f AndrePOliveiraCV.tex

pdf: AndrePOliveiraCV.pdf

cv.tex: data.yml prepyaml.js template.tex
	pandoc -o cv.tex --standalone --template=template.tex data.yml

AndrePOliveiraCV.pdf: data.yml prepyaml.js template.tex
	pandoc -o AndrePOliveiraCV.pdf --standalone --template=template.tex data.yml

data.yml:
	node prepyaml.js

tidy:
	rm -f AndrePOliveiraCV.tex
	rm -f data.yml

clean:
	rm -f AndrePOliveiraCV.pdf
	rm -f AndrePOliveiraCV.tex
	rm -f data.yml
