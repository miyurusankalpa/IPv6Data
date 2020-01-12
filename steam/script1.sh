#!/bin/bash
codes="maa1 lhr1 ams1 sgp1 sto1 sto2 fra1 par1 iad1 hkg1 lax1 mad1 ord1 lax1 okc1 atl1 sea1 vie1 tyo1 syd1 gru1"
eval "(echo "Domain,IPv4,IPv6") >> output1.csv"

for code in $codes; do
		e=0
			for n in {1..99} ; do
				domain="cache$n-$code.steamcontent.com"
				echo "$domain"
				
				C=$(dig +short $domain -t A @2001:4860:4860::8888)

				OUT4="dig +short $domain -t A @2606:4700:4700::1111"
				OUT6="dig +short $domain -t AAAA @2606:4700:4700::1001"
				
				if [ -z $C ]
					then
						e+=1
						continue
					else
						e=0
				fi
				
				if [[ $e -gt 9 ]]
				then
				  break
				fi
				
				eval "(echo $domain; echo ","; $OUT4; echo ","; $OUT6;) | tr '\n' ' ' >> output.csv"
				eval "(echo "") >> output.csv"
					sleep .2
	done
done
