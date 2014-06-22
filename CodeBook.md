The output tidy data set ("tidy_data.txt") contains 180 observations of 68 variables. The observations are means counted for measurements of means and standard deviations for each activity and subject (see "README.md" for the assignment)

VARIABLES 	  
---------
CATEGORICAL: 
------------

Activity	  WALKING
	 	  WALKING_UPSTAIRS
		  WALKING_DOWNSTAIRS
		  LAYING
		  SITTING
		  STANDING
	
Subject_id 	  from 1 to 30


AVERAGES OF MEASUREMETS OF MEANS AND STANDARD DEVIATIONS FOR MEASUREMENTS (RESPOND TO FOLLOWING VARIABLE NAMES):
---------------------------------------------------------------------------------------------------------------
tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyAccMag_mean
tGravityAccMag_mean
tBodyAccJerkMag_mean
tBodyGyroMag_mean
tBodyGyroJerkMag_mean
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyAccMag_mean
fBodyBodyAccJerkMag_mean
fBodyBodyGyroMag_mean
fBodyBodyGyroJerkMag_mean
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_std
tGravityAccMag_std
tBodyAccJerkMag_std
tBodyGyroMag_std
tBodyGyroJerkMag_std
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyAccMag_std
fBodyBodyAccJerkMag_std
fBodyBodyGyroMag_std
fBodyBodyGyroJerkMag_std

DICTIONARY FOR PARTS OF VARIABLES' NAMES:
-----------------------------------------
"t" prefix - time domain signals
"f" prefix - frequency domain signals
"Acc" - accelerometer signals
"Gyro" - gyroscope signals
"X", "Y", "Z" - axis of signal
"Mag" - magnitude of 3-dimensional signals, calculated with Euclidian norm
"BodyAcc" - body acceleration signal, part of the whole acceleration signal
"GravityAcc" - gravity acceleration signal, part of the whole acceleration signal
"Jerk" - jerk signals, derived from body linear acceleration and angular velocity
"mean" - mean value
"std" - standard deviation

UNITS:
------
For processed values, measured by the accelerometer: standard gravity units "g".
For processed values, measured by the gyroscope: radians/second.

More information about the study design and the nature of the variables can be gained in the "./UCI HAR Dataset/README.txt" and "./UCI HAR Dataset/features_info.txt" files in original data folder (can be downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" according to assignment instructions).
