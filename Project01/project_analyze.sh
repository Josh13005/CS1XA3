#!/bin/bash
echo '      Menu'
echo '1) File size list'
echo '2) File type count'
echo '3) FIXME log'
read -p 'Enter your option [1,2,3] : ' num
echo "========================"

if [ "$num" -eq 1 ] ; then
	a="../../CS1XA3"
	ls "$a" -lShR | grep -v "^d" 
fi
if [ "$num" -eq 2 ] ; then
	read -p "enter your extension:" ext
	find ../../CS1XA3 -name "*.$ext" -type f | wc -l
fi
if [ "$num" -eq 3 ] ; then
	if [ ! -f "$fixme.log" ] ; then
		touch fixme.log
	fi
	grep -H -r "#FIXME" ../../CS1XA3* | cut -d: -f1 > fixme.log
	while read f; do basename "$f"; done <fixme.log
fi
