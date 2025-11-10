**Testing Framework:**

Every migration project needs confirmation that migrated code didn’t change the existing functionality. Best way is to compare data generated using existing system verses data generated using migrated(new) system. 
This testing framework will help you for this comparison. Data with existing system (actual) can be save in ‘Before’ folder and migrated system (expected) generated output data need to save in ‘After’ folder in csv format. Below steps are followed for testing:

1.	both data files will read in the script 
2.	Remove non comparable columns from both data frames
3.	Compare two data frames based on business keys
4.	Find delta records between two i.e., “insert expected” and “update expected”
5.	Then it finds “columns expected from actual but do not exist in expected output” in the target output data and shows in logs
6.	Total number of “Expected records not found in actual” will be listed in logs
7.	Total number of “Expected records exist that are not in actual df” will be listed 
8.	Total number of “Extra records not found in expected”
9.	Number column failed with number of rows with differences.
10.	And number columns which are passed in both the data files will be logged. 
11.	In all above steps in logs, you will see some sample 10 records. 
