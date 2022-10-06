# Track Files Changes - BigBrother - Advanced Programming
This repository includes the first assignment created as part of the Advanced Programming course at the Ben-Gurion University of the Negev.

<p align="center">
<img src="https://shushan.co.il/wp-content/uploads/2021/08/bash.jpg"  width=30%>
<img src="https://wallpaperaccess.com/full/1537294.png"  width=25%>
<img src="https://i.pinimg.com/originals/fe/60/4c/fe604c386cbe5de093a44ac6584be8c4.jpg"  width=25%>
</p>

The Advanced Programming course goes over **C programming**, by focusing on **abstract data types** including the main components, **structures**, **linked lists**, **modules**, **memory management, **file handling**, and the **compilation process**... In addition, **C++ programming** principles and mechanisms like **encapsulation**, **inheritance**, **polymorphism**, **generic programming**, and **templates** were taught. The course also teaches script languages as another approach to programming.

## BigBrother
Bash script that tracks the changes in a specified folder.
The script receives a single parameter at a time - this parameter is the absolute path of the folder that we want to follow.

### Examples:
```
./bigBrother.sh ~
./bigBrother.sh 'pwd'
```
### First run:
At the first time you are running this script you will see: "Welcome to the Big Brother". It means that from now and on this folder is under surveillance.

### Other runs:
After the first run of the script, it compares between the current and the previous state of the folder.
It prints all the changes that were apply, for example: deleted files, created files. 
* If there is a file that was not change, the script will not print anything about it.
* if a new folder created, you will see: "Folder created: 'FolderName'".
* if a new file created, you will see: "File created: 'FileName'".
* if a file was deleted, you will see: "File deleted: 'FileName'".

### Full Example:
```
runCheck@runCheck:~/Desktop/x$ ls
bigBrother.sh  file1  file2  folder1  folder2
runCheck@runCheck:~/Desktop/x$ ./bigBrother.sh `pwd`
Welcome to the Big Brother
runCheck@runCheck:~/Desktop/x$ ./bigBrother.sh `pwd`
runCheck@runCheck:~/Desktop/x$ rm -r folder1
runCheck@runCheck:~/Desktop/x$ rm file1
runCheck@runCheck:~/Desktop/x$ touch file3
runCheck@runCheck:~/Desktop/x$ mkdir folder3
runCheck@runCheck:~/Desktop/x$ ls
bigBrother.sh  file2  file3  folder2  folder3  helper.txt
runCheck@runCheck:~/Desktop/x$ ./bigBrother.sh `pwd`
File deleted: file1
File deleted: folder1
File created: file3
Folder created: folder3
```


<p align="center">
<img src="https://in.bgu.ac.il/marketing/DocLib/Pages/graphics/heb-en-arabic-logo-small.png">
</p>
