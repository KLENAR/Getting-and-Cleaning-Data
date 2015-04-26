
---
#Getting and Cleaning Data Course Project

The files in this folder provide a solution for the Coursera "Getting And Cleaning Data" Course Project. 

The Course Project works with the "Human Activity Recognition Using Smartphones Dataset" from the UCI Machine Learning Repository. A description of the dataset can be found at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

The dataset can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The Transformation Script run_analysis.R

The file run_analysis.R contains an R script for transforming the original dataset into a second dataset:


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



The script uses the package dplyr.

The  original dataset is extracted in temporary  directory.

The script read the test and training data from the folder UCI HAR Dataset, apply the transformations, write the result to the file "tidy_data.txt" in the current working directory. 

Explanation Of The Script

1. Merging the training and the test sets to create one data set.


The run_analysis.R script first loads and concatinate by rows:

the activity files "Y_test.txt" and "Y_train.txt",

the subject files "subject_train.txt" and "subject_test.txt",

the fearures files"X_test.txt" and "X_train.txt",

then sets names for columns and  merges them into one data.frame.

 The subjectid and activityname form the last two columns.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

The input data contains several candidates for mean and standard deviation measurements:

features created by the mean() function (e.g. fBodyBodyGyroMag-mean())
features created by the std() function (e.g. fBodyBodyGyroMag-std())

I used grep function to form appropiate column's names.  This selects 66 features, the resulting data.frame with subject's  and activity's names has 68 columns.

3. Uses descriptive activity names to name the activities in the data set

The script loads activity names from the file "activity_labels.txt" and transforms the column activity's name to a factor with appropiate labels.

4. Appropriately labels the data set with descriptive variable names.


 For better readability: 
 

prefix t is replaced by Time

Acc is replaced by Accelerometer

Gyro is replaced by Gyroscope

prefix f is replaced by Frequency

Mag is replaced by Magnitude

BodyBody is replaced by Body



5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The principles of tidy data are:

Each variable forms a column.

Each observation forms a row.

Each type of observational unit forms a table


I aggregate data on subjects and their mean for each kind of activity


The Codebook.

The codebook is  the file CodeBook.md.
It describes the variables of the output data set.

