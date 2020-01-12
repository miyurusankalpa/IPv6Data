#!/bin/bash

eval "(echo "Domain,IPv4,IPv6") >> output2.csv"

for n in {0..3999} ; do
				domain="valve$n.steamcontent.com"
				echo "$domain"
				
				#C=$(dig +short $domain -t A @2001:4860:4860::8888)
				C=$(dig +short $domain -t A @2402:4000::6)

				OUT4="dig +short $domain -t A @2606:4700:4700::1111"
				OUT6="dig +short $domain -t AAAA @2606:4700:4700::1001"
				
				if [ -z $C ]
					then
						continue
				fi
				
				eval "(echo $domain; echo ","; $OUT4; echo ","; $OUT6;) | tr '\n' ' ' >> output2.csv"
				eval "(echo "") >> output2.csv"
					sleep .2
done
