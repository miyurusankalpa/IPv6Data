#!/bin/bash
for i in $(seq 0 999)
do
	ip="2a04:4e42::$i"
	file='out.txt'
	
	write="echo $ip >> $file"
	scrape="true | openssl s_client -connect [$ip]:443 | openssl x509 -noout -text | grep DNS: >> $file"
  
  eval $write
  eval $scrape

done

