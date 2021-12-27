#!/bin/bash
#!/bin/bash
for i in $(seq "$((2#0000000000000000))" "$((2#1111111111111111))")
 do
	ip="2a02:26f0:6b:2a0::$(echo "obase=16;$i" | bc | tr '[:upper:]' '[:lower:]')"

	file='out.txt'
	
	write="echo $ip >> $file"
	scrape='echo -n | timeout 1 openssl s_client -connect [$ip]:443 | openssl x509 -noout -text | grep DNS: >> $file'
  
  eval $write
  eval $scrape

done
