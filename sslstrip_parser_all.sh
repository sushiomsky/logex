#!/bin/bash
cd /var/log/sslstrip
dateien=`find . -type f`
for i in $dateien ; do 
	echo $i;
	cd /usr/local/src/raspiap/sslstrip_parser/;
	rm sslstrip.log
	ln -s /var/log/sslstrip/$i sslstrip.log
	./sslstrip_parser.py  ;
	
done
