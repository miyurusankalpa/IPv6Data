#!/bin/bash
eval "(echo "Code,IPv4,IPv6") >> output.csv"
for l1 in {a..z} ; do
	for l2 in {a..z} ; do
		for l3 in {a..z} ; do
			for n in {1..9} ; do
				code="$l1$l2$l3$n"

				echo $code

				C=$(dig +short scontent.f$code-1.fna.fbcdn.net -t A @2001:4860:4860::8888)
				OUT4="dig +short scontent.f$code-1.fna.fbcdn.net -t A @2606:4700:4700::1111"
				OUT6="dig +short scontent.f$code-1.fna.fbcdn.net -t AAAA @2606:4700:4700::1001"

				if [ -z $C ]
					then
						break
				fi

				eval "(echo $code; echo ","; $OUT4; echo ","; $OUT6;) | tr '\n' ' ' >> output.csv"
				eval "(echo "") >> output.csv"
					sleep .2
			done
		done
	done
done
