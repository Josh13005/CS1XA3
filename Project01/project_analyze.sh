#!/bin/bash
echo '======================================'
echo '      Menu'
echo '======================================'
echo '1) File Size List'
echo '2) File Type Count'
echo '3) FIXME Log'
echo '4) Switch To Executable'
echo '5) Backup and Delete / Restore'
echo '6) Group Same Extension Of Files'
echo '7) Change File Permissions'
echo '======================================'
read -p 'Enter your option [1,2,3,4,5,6,7] : ' num
echo "======================================"

if [ "$num" -eq 1 ] ; then
	a="../../CS1XA3"
	ls "$a" -lShR | grep -v "^d" 
fi
if [ "$num" -eq 2 ] ; then
	read -p "enter your extension:" ext
	find ../../CS1XA3 -iname "*.$ext" -type f | wc -l
fi
if [ "$num" -eq 3 ] ; then
	if [ ! -f "$fixme.log" ] ; then
		touch fixme.log
	fi
	grep -H -r "#FIXME" ../../CS1XA3* | cut -d: -f1 > fixme.log
	while read f; do basename "$f"; done <fixme.log
fi
if [ "$num" -eq 4 ] ; then
	echo '1) Change'
	echo '2) Restore'
	read -p 'Enter your option [1,2] :' opt
	echo 'done'
	if [ "$opt" -eq 1 ] ; then
		find ../../CS1XA3 -type f -writable ! -executable -iname "*.sh" > permissions.log
		while read f; do
			chmod "u+x" "$f"
		done < permissions.log

	fi
	if [ "$opt" -eq 2 ] ; then
		while read f; do
			 chmod "u-x" "$f";
		 done < permissions.log
	fi
fi
if [ "$num" -eq 5 ] ; then
	echo '1) Backup'
	echo '2) Restore'
	read -p 'Enter your option [1,2] :' opt

	if [ "$opt" -eq 1 ] ; then
		if [ ! -d backup ] ; then
			mkdir backup
		fi
		find ../../CS1XA3/Project01/backup -type f -delete
		find ../../CS1XA3 -type f -iname "*.tmp" >> ../../CS1XA3/Project01/backup/restore.log
		while read f; do
			mv "$f" ../../CS1XA3/Project01/backup;
		done < ../../CS1XA3/Project01/backup/restore.log
	fi
	if [ "$opt" -eq 2 ] ; then
	if [ -s ../../CS1XA3/Project01/backup/restore.log ] ; then
		while read f; do
			VAR1=$(basename "$f") 
			VAR2=$(dirname "$f")
			echo ../../CS1XA3/Project01/backup/"$VAR1"
			echo "$VAR2"
			mv ../../CS1XA3/Project01/backup/"$VAR1" "$VAR2"
		done < ../../CS1XA3/Project01/backup/restore.log
		echo "---Done---"
		rm ../../CS1XA3/Project01/backup/restore.log

	else
		echo ""
		echo "---No files to backup---"
		echo ""
	fi
	fi
fi
if [ "$num" -eq 6 ] ; then
	read -p 'Enter the file extension: ' ext
	read -p 'Enter the name of the directory: ' dir
	if [ ! -d "$dir" ] ; then
		mkdir "$dir"
		find ../../CS1XA3 -iname "*.$ext" -type f >> ../../CS1XA3/Project01/path.log
		while read f ; do
			VAR1=$(basename "$f")
			cp "$f"  ../../CS1XA3/Project01/"$dir"
		done < ../../CS1XA3/Project01/path.log
		ls -lS ../../CS1XA3/Project01/"$dir"
	else
	echo ""
	echo " ----Directory already exists----"
	echo ""
	fi
fi
if [ "$num" -eq 7 ] ; then
	read -p 'Enter the file name: ' fname
	read -p 'Enter [1] for octal permission table or [0] to change file permissions: ' opt

	if [ "$opt" -eq 0 ] ; then
	read -p 'Enter the file permissions: ' perm
		if [ -f "$fname" ] ; then
			find ../../CS1XA3 -iname "$fname" > file.log
			while read f; do
				chmod "$perm" "$f" 
			done < file.log
		else
			echo ""
			echo "----No such file found----"
			echo ""
		fi
	fi
	if [ "$opt" -eq 1 ] ; then
		echo ""
		echo "                      ============================="
		echo "		      |	000	->	--------- |"
		echo "		      |	100	->	--x------ |"
		echo "		      |	200	->	-w------- |"
		echo "		      |	300 	->	-wx------ |"
		echo "		      |	400 	->	r-------- |"
		echo "		      |	500	->	r-x------ |"
		echo "		      |	600	->	rx------- |"
		echo "		      |	700	->	rwx------ |"
		echo "		      |	777	->	rwxrwxrwx |"
		echo "                      ============================="
		echo ""
	fi

fi

