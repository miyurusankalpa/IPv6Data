#!/bin/bash
for i1 in {21..22} ; do
	for i2 in {0..20} ; do
		ip="2620:1ec:$i1::$i2"
		file='out.txt'

		write="echo $ip >> $file"
		scrape="echo -n | timeout 1 openssl s_client -connect [$ip]:443 | openssl x509 -noout -text | grep DNS: >> $file"

	  eval $write
	  eval $scrape

	done
done
