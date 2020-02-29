#  CS 1XA3 Project01 - <**varugj1**>

## Usage
   Execute this script from project root with:<br />  
	./CS1XA3/Project01/project_analyze<br />

   Upon running the script, a menu will appear:<br />
```	======================================
		menu
	======================================
	1) File Size List
	2) File Type Count
	3) FIXME Log
	4) Switch To Executable
	5) Backup and Delete / Restore
	6) Group Same Extension of Files
	7) Change File Permissions  
	Enter your choice [1,2,3,4,5,6,7] : _  
```

## Feature 01
   Description : This feature lists all the files from each directory and their sizes in human readable format.
		 The files are sorted from the largest to the smallest based on their size. Additional information 
		 on files are also provided.<br />
   Execution :   Execute this feature by pressing "**1**" after running the script.<br />
   Reference :   a few command flags were referred from this. 
	         site : (https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/)

## Feature 02
   Description : This feature counts the number of files in the repo based on the file extension provided by the user.<br />
   Execution :   Execute this feature by pressing "**2**" after running the script.<br />
   Reference :  **None**

## Feature 03
   Description : This feature displays all the files with occurence of the word "**#FIXME**". The file paths are stored
		 in another file `fixme.log`. If the file "fixme.log" doesnt exsist, it is created and then the
		 then the feature is executed.<br />
   Execution :   Execute this feature by pressing "**3**" after running the script.<br />
   Reference :   Some of the code was refered from a few sites online [Can't find the sites]

## Feature 04
   Description : This feature searches the entire repository for `.sh` files and changes the file permissions for it. If file has user writable permissions
		 but not user executable permissions the file paths of those files are stored in **permissions.log**. If the user chooses to change file permissions, 
		 the files are read from the log and user executable permissions are added to them . If the user chooses to restore the file back to its original permissions, the executable permissions are
		 removed from the files present in the log file and the file returns to its original file permissions.<br />  
   Execution :	 Execute this feature by pressing "**4**" after running the script. The user will be provided with two options. Enter "**1**" to change file permissions
		 or "**2**" to restore the file back to its original file permissions.<br />
   Reference :	 Some of the code was refered from site : (https://stackoverflow.com/questions/2491985/find-all-writable-files-in-the-current-directory)

## Feature 05
   Description : This feature searches the entire repository for `.tmp` files and provides a backup or restores the files based on users choice. If the user
		 chooses to backup those files, a directory, **backup** is created, all the `.tmp` file's file path is stored to **restore.log** and moved to the
		 backup directory. If the directory already exists, its content is deleted and then the files are moved to it. If the user chooses to restore the files,
		 the files are moved from the backup directory to the its original path which is derived from the log file. the log file is later deleted and if the
		 user restores the files again, an error is flagged `No files to backup`. The user is advised to keep the log file uncorrupted, as it would cause this
		 feature to act wierd.<br />
   Execution :   Execute this feature by pressing "**5**" after running the script. The user will be provided with two options. Enter "**1**" to Backup `.tmp` files
	         or "**2**" to restore the files.<br />
   Reference :   **none**

## Custom Feature 1
   Description : This feature groups all the files belonging to the same extension specified by the user under a single directory whose name is specified by the user
		 and prints out the files in the decreasing order of their file size. If the directory already exists an error
		 message is printed `----Directory already exists----`. The bash script finds all the file path with the extension provided by the user,
		 and stores them in **path.log**. Files are read from the log file and copied to the directory provided by the user.<br />
   Execution :   Execute this feature by pressing "**6**" after runnning the script. Enter the file extension and then the directory name.<br />
   Reference :   some code was referenced from site : (https://stackoverflow.com/questions/4020216/problem-redirecting-output-of-find-to-a-file) , 
		(https://unix.stackexchange.com/questions/436551/how-can-i-search-for-all-files-that-are-not-user-writeable-in-unix-using-grep)

## Custom Feature 2
   Description : This feature changes the file permissions of the files based on the users choice. 
		 The user will be asked to enter a file and file permissions for that file. If the file does not exist, an error message is
		 printed `----N0 such file found----`. The bash script finds all the file path of the file provided by the user and stores them in
		 **file.log**. Files are read from the log file and then the file permissions are changed by the user. The inputed file permissions
		 should be octal file permissions. A brief octal conversion chart is provided if the user chooses to view it.<br />
   Execution :   Execute this feature by pressing "**7**" after running the script. Enter the file name and then the user has the choice to either view the 
		 octal permission chart or Enter the file permissions
   Reference :   **none**
