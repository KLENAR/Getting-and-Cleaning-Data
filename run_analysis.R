# Course Project assignment: create one R script called run_analysis.R 
# that does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# Source: https://class.coursera.org/getdata-006/human_grading/index


#0.  Download, unzip the data set from the given source

# set the file url 
fileurl <- c("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ")

# create a temporary directory
 tdir <- tempdir()

# create the placeholder file
tfile <- tempfile(tmpdir=tdir, fileext=".zip")

# download into the placeholder file tfile (works for WIN 8 64õ)
download.file(fileurl, tfile, method="auto", mode="wb")

#unzip
unzip(zipfile=tfile,exdir=tdir)

#get the path of the files
pathfi <- file.path(tdir , "UCI HAR Dataset")

# read data from the files into the variables

#read the activity files
dataActivityTest  <- read.table(file.path(pathfi, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(pathfi, "train", "Y_train.txt"),header = FALSE)

#read the subject files

dataSubjectTrain <- read.table(file.path(pathfi, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(pathfi, "test" , "subject_test.txt"),header = FALSE)

#read fearures files

dataFeaturesTest  <- read.table(file.path(pathfi, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(pathfi, "train", "X_train.txt"),header = FALSE)



#1. Merges the training and the test sets to create one data set
#concatinate by rows Train and Test
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)

#set names for data frame
names(dataSubject)<-c("Subject")
names(dataActivity)<- c("Activity")
dataFeaturesNames <- read.table(file.path(pathfi, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

# Merge columns to get the data frame Data for all data

dataTmp <- cbind(dataSubject, dataActivity)
Data <- cbind( dataFeatures, dataTmp)


#2. Extracts only the measurements on the mean and standard deviation for each measurement
# taken names of features with “mean()” or “std()”

subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

#subset the data frame Data by seleted names of features

selectedNames<-c(as.character(subdataFeaturesNames), "Subject", "Activity" )
Data<-subset(Data,select=selectedNames)

#3. Uses descriptive activity names to name the activities in the data set
#read descriptive activity names from “activity_labels.txt”

activityLabels <- read.table(file.path(pathfi, "activity_labels.txt"),header = FALSE)

#facorize variable activity in the data frame Data using descriptive activity names
Data$Activity <- factor(Data$Activity, labels = activityLabels$V2)


#4. Appropriately labels the data set with descriptive variable names

names(Data)<-gsub("^t", "Time", names(Data))
names(Data)<-gsub("^f", "Frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))


#5. From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

library(plyr);
Data2<-aggregate(. ~Subject + Activity, Data, mean)
Data2<-Data2[order(Data2$Subject,Data2$Activity),]

# Completion
write.table(Data2, file = "tidydata.txt",row.name=FALSE)

#print for CodeBook
write(names(Data), file = "variablesNames.txt", ncolumns = 1)






