#  CS 1XA3 Project01 - <**varugj1**>

## Usage
   Execute this script from project root with:
	chmod +x CS1XA3/Project01/project_analyze.sh
	./CS1XA3/Project01/project_analyze

   Upon running the script, a menu will appear:
	'''	menu
	1) File size list
	2) File type count
	3) FIXME Log
	Enter your choice [1,2,3] : _  '''

## Feature 01
   Description : This feature lists all the files from each directory and their sizes in human readable format.
		 The files are sorted from the largest to the smallest based on their size. Additional information 
		 on files are also provided.
   Execution :   Execute this feature by pressing "*1*" after running the script.
   Reference :   a few command flags were referred from this. 
	         site : (https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/)

## Feature 02
   Description : This feature counts the number of files in the repo based on the file extension provided by the user.
   Execution :   Execute this feature by pressing "*2*" after running the script.
   Reference :   None

## Feature 03
   Description : This feature displays all the files with occurence of the word "#FIXME". The file paths are stored
		 in another file "fixme.log". If the file "fixme.log" doesnt exsist, it is created and then the
		 then the feature is executed.
   Execution :   Execute this feature by pressing "*3*" after running the script.
   Reference :   Some of the code was refered from a few sites online [Can't find the sites]  
	
## Custom Feature 1
   Description : This feature groups all the files by their extension in order of their file size in the increasing order
		 and copies them top another directory named by the user. The user will be asked to input the file 
		 extension and the name of the new directory.
   Execution :   **TODO**
   Reference :   **TODO**

## Custom Feature 2
   Description : This feature changes the file permissions based on the users choice. The user will be asked 
		 to enter a file and file permissions for that file.
   Execution :   **TODO**
   Reference :   **TODO**
