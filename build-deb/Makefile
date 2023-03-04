all: man deb 

man: man/tmap.1.md
	pandoc man/tmap.1.md -f markdown+hard_line_breaks -s -t man -o man/tmap.1
	cp man/tmap.1 tmap/usr/share/man/man1/
	gzip -f tmap/usr/share/man/man1/tmap.1
deb: man ../tmap ../nmap-services
	./version.sh
	cp ../nmap-services tmap/usr/share/nmap-services
	cp ../tmap tmap/usr/bin/tmap
	sed -i 's/\"nmap-services\"/"\/usr\/share\/tmap\/nmap-services\"/g' tmap/usr/bin/tmap
	dpkg-deb --build tmap
clean:
	rm -f tmap.deb
	rm -f man/tmap.1
