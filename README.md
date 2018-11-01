# ProgrammingAssignment3
Repo for Getting and Cleaning Data final assignment

getdata_projectfiles_UCI HAR Dataset.zip (Samsung data) should be unzipped in the working directory. In other words, directories test and train as well as files features.txt and activity_labels.txt should be in the working directory.

To execute the function run_analysis : 
- save and source the script run_analysis.R in the working directory
- run run_analysis() 

1- The script reads table (read.table) in R the files variables 
- X_test.txt, Y_test.txt and subject_test.txt in test directotry. 
- X_train.txt, Y_train.txt and subject_train.txt in train directotry.

2- The script reads table (read.table) also from UCI HAR Dataset in R the files : 
- features.txt wich contains the X variables column name
- activity_labels.txt which contains the labels translation of Y files content 

3- The tables are merged first by combining by columns into 2 new tables successively test files then train tables as follow : subject, Y and X. 

4- The 2 obtained tables are combined by rows. 

5- From the features table we extract lines numbers of features containing mean or std. The obtained vector enables us to get from table resulted of step 4 a new table called meanstdtab with only the measurements on the mean and standard deviation for each measurement

6- The corresponding Y data column in meanstdtab table is updated with labels from activity_labels

7- meanstdtab columns are renamed as follow : 
	- 1st column : subject (variable corresponding to subject* files)
	- 2nd column : activitylabels (variable corresponding to Y* files and updated in step 6)
	- remaining columns : named from features table (variables from X* files)

8- Data groupped by Subjects and then by Activities and then use the summarize_each function to average the columns by group to end with only one observation (the mean in this case) for each subject‐activity pair (30 subjects * 6 activities = 180 observations in total)

9- using write.table to generate a text file with tidy data set from table resulted of step 8 in working directory 

