#!/bin/bash
for i in $(seq 0 99)
 do
	for hex in 0001 1001 2001 3001 4001 5001 6001 7001 8001 9001 a001 b001 c001 d001 e001 f001
	do
	#ip="2400:6180:0:d1::$i:$hex" sgp
	#ip="2a03:b0c0:0:1010::$i:$hex" ams2
	#ip="2a03:b0c0:2:d0::$i:$hex" ams3
	#ip="2604:a880:0:1010::$i:$hex" #nyc2
	ip="2604:a880:800:a1::$i:$hex" #nyc3

	file='nyc3.txt'

	write="echo $ip >> $file"
	scrape='echo -n | timeout 1 openssl s_client -connect [$ip]:443 | openssl x509 -noout -text | grep DNS: >> $file'

  eval $write
  eval $scrape

	done
done
