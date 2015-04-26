#Getting and Cleaning Data Course Project. Codebook.


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Using its embedded accelerometer and gyroscope, there were captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For detailed description of the original dataset, refer to README.txt and:

- 'features_info.txt': shows information about the variables used on the feature vector,

- 'features.txt': list of all features,

- 'activity_labels.txt': links the class labels with their activity name,

bundeled with the original data set zip archive. The original data set is split into training and test sets where each partition consists of three files that contain:

the measurements from the accelerometer and gyroscope: 'train/X_train.txt' 'test/X_test.txt'

the labels for activity: 'train/y_train.txt' 'test/y_test.txt'

the subject identifiers: 'train/subject_train.txt' 'test/subject_test.txt'


Tidy Data contains aggregated mean values of all mean and standard deviation values from original data set grouped by activity and subject, resulting in a total of 180 records.


Attribute Information:

For each record in the tidy data it is provided:

 - An identifier of the subject who carried out the experiment (30 different subjects, IDs ranging from {1,2,3,...,30})


 - Its activity label (one out of 6 different activities):

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

- Means of values from the accelerometer and the gyroscope, numerical value ranging in [-1,1]




Variable names of resulting data set:




TimeBodyAccelerometer-mean()-X

TimeBodyAccelerometer-mean()-Y

TimeBodyAccelerometer-mean()-Z

TimeBodyAccelerometer-std()-X

TimeBodyAccelerometer-std()-Y

TimeBodyAccelerometer-std()-Z

TimeGravityAccelerometer-mean()-X

TimeGravityAccelerometer-mean()-Y

TimeGravityAccelerometer-mean()-Z

TimeGravityAccelerometer-std()-X

TimeGravityAccelerometer-std()-Y

TimeGravityAccelerometer-std()-Z

TimeBodyAccelerometerJerk-mean()-X

TimeBodyAccelerometerJerk-mean()-Y

TimeBodyAccelerometerJerk-mean()-Z

TimeBodyAccelerometerJerk-std()-X

TimeBodyAccelerometerJerk-std()-Y

TimeBodyAccelerometerJerk-std()-Z

TimeBodyGyroscope-mean()-X

TimeBodyGyroscope-mean()-Y

TimeBodyGyroscope-mean()-Z

TimeBodyGyroscope-std()-X

TimeBodyGyroscope-std()-Y

TimeBodyGyroscope-std()-Z

TimeBodyGyroscopeJerk-mean()-X

TimeBodyGyroscopeJerk-mean()-Y

TimeBodyGyroscopeJerk-mean()-Z

TimeBodyGyroscopeJerk-std()-X

TimeBodyGyroscopeJerk-std()-Y

TimeBodyGyroscopeJerk-std()-Z

TimeBodyAccelerometerMagnitude-mean()

TimeBodyAccelerometerMagnitude-std()

TimeGravityAccelerometerMagnitude-mean()

TimeGravityAccelerometerMagnitude-std()

TimeBodyAccelerometerJerkMagnitude-mean()

TimeBodyAccelerometerJerkMagnitude-std()

TimeBodyGyroscopeMagnitude-mean()

TimeBodyGyroscopeMagnitude-std()

TimeBodyGyroscopeJerkMagnitude-mean()

TimeBodyGyroscopeJerkMagnitude-std()

FrequencyBodyAccelerometer-mean()-X

FrequencyBodyAccelerometer-mean()-Y

FrequencyBodyAccelerometer-mean()-Z

FrequencyBodyAccelerometer-std()-X

FrequencyBodyAccelerometer-std()-Y

FrequencyBodyAccelerometer-std()-Z

FrequencyBodyAccelerometerJerk-mean()-X

FrequencyBodyAccelerometerJerk-mean()-Y

FrequencyBodyAccelerometerJerk-mean()-Z

FrequencyBodyAccelerometerJerk-std()-X

FrequencyBodyAccelerometerJerk-std()-Y

FrequencyBodyAccelerometerJerk-std()-Z

FrequencyBodyGyroscope-mean()-X

FrequencyBodyGyroscope-mean()-Y

FrequencyBodyGyroscope-mean()-Z

FrequencyBodyGyroscope-std()-X

FrequencyBodyGyroscope-std()-Y

FrequencyBodyGyroscope-std()-Z

FrequencyBodyAccelerometerMagnitude-mean()

FrequencyBodyAccelerometerMagnitude-std()

FrequencyBodyAccelerometerJerkMagnitude-mean()

FrequencyBodyAccelerometerJerkMagnitude-std()

FrequencyBodyGyroscopeMagnitude-mean()

FrequencyBodyGyroscopeMagnitude-std()

FrequencyBodyGyroscopeJerkMagnitude-mean()

FrequencyBodyGyroscopeJerkMagnitude-std()

Subject

Activity

