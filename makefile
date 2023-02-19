pdf:
	./rename-svg-files.sh
	./svg-pages-to-pdf.sh

clean:
	rm *.pdf *.svg
