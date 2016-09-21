This code book describes the data source, data set information, data set, transformation details, and variable infos.

############################
Data Source:

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

############################
Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, 
LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and 
gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 
50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training 
data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then
sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor 
acceleration signal, which has gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector
of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt'
for more details. 

############################
Data Set

The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X 
axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the
'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity
from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each
window sample. The units are radians/second. 
Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

############################
Transformation Details

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
for each activity and each subject.

Above results can be obtained by run_analysis.R. See README.md for more details. 

The run of run_analysis.R will produce two more files insider the folder UCI HAR Dataset:

data.txt

tidy_data.txt

############################
Variables for tidy_data

V1 volunteer_ID 

V2 activity_label 


V3 tBodyAcc-mean()-X 

V4 tBodyAcc-mean()-Y 

V5 tBodyAcc-mean()-Z

V6 tBodyAcc-std()-X 

V7 tBodyAcc-std()-Y 

V8 tBodyAcc-std()-Z 

V9 tGravityAcc-mean()-X 

V10 tGravityAcc-mean()-Y

V11 tGravityAcc-mean()-Z 

V12 tGravityAcc-std()-X 

V13 tGravityAcc-std()-Y 

V14 tGravityAcc-std()-Z

V15 tBodyAccJerk-mean()-X 

V16 tBodyAccJerk-mean()-Y 

V17 tBodyAccJerk-mean()-Z 

V18 tBodyAccJerk-std()-X

V19 tBodyAccJerk-std()-Y 

V20 tBodyAccJerk-std()-Z 

V21 tBodyGyro-mean()-X 

V22 tBodyGyro-mean()-Y

V23 tBodyGyro-mean()-Z 

V24 tBodyGyro-std()-X 

V25 tBodyGyro-std()-Y 

V26 tBodyGyro-std()-Z

V27 tBodyGyroJerk-mean()-X 

V28 tBodyGyroJerk-mean()-Y 

V29 tBodyGyroJerk-mean()-Z 

V30 tBodyGyroJerk-std()-X

V31 tBodyGyroJerk-std()-Y 

V32 tBodyGyroJerk-std()-Z 

V33 tBodyAccMag-mean() 

V34 tBodyAccMag-std()

V35 tGravityAccMag-mean() 

V36 tGravityAccMag-std() 

V37 tBodyAccJerkMag-mean() 

V38 tBodyAccJerkMag-std()

V39 tBodyGyroMag-mean() 

V40 tBodyGyroMag-std() 

V41 tBodyGyroJerkMag-mean() 

V42 tBodyGyroJerkMag-std()

V43 fBodyAcc-mean()-X 

V44 fBodyAcc-mean()-Y 

V45 fBodyAcc-mean()-Z 

V46 fBodyAcc-std()-X 

V47 fBodyAcc-std()-Y

V48 fBodyAcc-std()-Z 

V49 fBodyAcc-meanFreq()-X 

V50 fBodyAcc-meanFreq()-Y 

V51 fBodyAcc-meanFreq()-Z

V52 fBodyAccJerk-mean()-X 

V53 fBodyAccJerk-mean()-Y 

V54 fBodyAccJerk-mean()-Z 

V55 fBodyAccJerk-std()-X

V56 fBodyAccJerk-std()-Y 

V57 fBodyAccJerk-std()-Z 

V58 fBodyAccJerk-meanFreq()-X 

V59 fBodyAccJerk-meanFreq()-Y

V60 fBodyAccJerk-meanFreq()-Z 

V61 fBodyGyro-mean()-X 

V62 fBodyGyro-mean()-Y 

V63 fBodyGyro-mean()-Z

V64 fBodyGyro-std()-X 

V65 fBodyGyro-std()-Y 

V66 fBodyGyro-std()-Z 

V67 fBodyGyro-meanFreq()-X

V68 fBodyGyro-meanFreq()-Y 

V69 fBodyGyro-meanFreq()-Z 

V70 fBodyAccMag-mean() 

V71 fBodyAccMag-std()

V72 fBodyAccMag-meanFreq() 

V73 fBodyBodyAccJerkMag-mean() 

V74 fBodyBodyAccJerkMag-std()

V75 fBodyBodyAccJerkMag-meanFreq() 

V76 fBodyBodyGyroMag-mean() 

V77 fBodyBodyGyroMag-std()

V78 fBodyBodyGyroMag-meanFreq() 

V79 fBodyBodyGyroJerkMag-mean() 

V80 fBodyBodyGyroJerkMag-std()

V81 fBodyBodyGyroJerkMag-meanFreq()


