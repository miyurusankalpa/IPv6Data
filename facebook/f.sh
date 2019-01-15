#!/bin/bash
for l1 in {a..z} ; do
	for l2 in {a..z} ; do
		for l3 in {a..z} ; do
			for n in {1..9} ; do
				code="$l1$l2$l3$n"
				
				echo $code
				
				C=$(dig +short scontent.f$code-1.fna.fbcdn.net -t A @222.165.171.1) 
				OUT4="dig +short scontent.f$code-1.fna.fbcdn.net -t A @222.165.171.1"
				OUT6="dig +short scontent.f$code-1.fna.fbcdn.net -t AAAA @222.165.171.2"
				
				if [ -z $C ]  
					then 
						break
				fi
				
				eval "(echo $code; echo ","; $OUT4; echo ","; $OUT6;) >> test"
				sleep .1
			done
		done
	done
done