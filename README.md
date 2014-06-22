--------------------------------------------------------------------------------------------------------------------------------------------------------

GENERAL ISSUES:

The code is a part of the project in the "Getting and Cleaning data" course on COURSERA platform. 
The initial data for the project was downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" according to the assignment instructions. The code processes the data, which initial study design is described in "./UCI HAR Dataset/README.txt" file in the downloaded folder. In short, the original data combines measurements of accelerometers and gyroscopes, embedded in the smartphones and fixed on waists of each of 30 person, performing 6 different activities (all 6 for each person): WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS, SITTING, STANDING, LAYING. The code merges the data for test and train datasets, renames variables' names and one of the variables, extracts mean and standard deviation for each measurement, and produces a dataset with variable means for each activity and each subject (tested person). 

--------------------------------------------------------------------------------------------------------------------------------------------------------

INSTRUCTIONS:

1) The data should be downloaded and unpacked in the working directory into the "UCI HAR Dataset" folder, containing:
-"test" folder with "subject_test.txt", "X_test.txt" and "y_test.txt" files;
-"train" folder with "subject_train.txt", "X_train.txt" and "y_train.txt" files;
-"activity_labels.txt", "features.txt", "features_info.txt" and "README.txt" files.
2) The working directory should be set in R or R Studio;
3) As the code uses ddply() function, plyr package should be installed;
4) The code can be run with source("Run_analysis.R") function;
5) The new tidy data set "tidy_data.txt" produced by the code appears in the working directory. It can be read into R with read.table() function (please, state arguments: sep="\t", header=TRUE) and reviewed with str() function.

--------------------------------------------------------------------------------------------------------------------------------------------------------

THE CODE ("Run_analysis.R"): 

1) Reads the following files into R data sets:
-"subject_test.txt" (into "subject_test" dataset), "X_test.txt" (into "X_test" dataset) and "y_test.txt" (into "y_test" dataset) files from the "./UCI HAR Dataset/test/" folder;
-"subject_train.txt" (into "subject_train" dataset), "X_train.txt" (into "X_train" dataset) and "y_train.txt" (into "y_train" dataset) files from the "./UCI HAR Dataset/train/" folder;
-"activity labels.txt" (into "activity_labels" dataset) and "features.txt" (into "features" dataset) from the "./UCI HAR Dataset/" folder;
2) Uses descriptive activity names to name the activities in label ("y_test" and "y_train") data sets;
3) Makes "test" data set from: "X_test" data set, "y_test" label data set and "subject_test" subject data set. Makes "train" data set from: "X_train" data set, "y_train" label data set and "subject_train" subject data set;  
4) Labels the "test" and "training" sets with descriptive variable names;
5) Merges "test" and "train" data sets into "tt_mean_std" data set;
6) Extracts only measurements of the mean and standard deviation for each measurement from the "tt_mean_std" data set, removes duplicated rows in case there are some;
7) Creates the final data set with the mean for each activity and each subject, edits descriptive variable names from unnecessary characters and writes the created data set into "tidy_data.txt" file.

--------------------------------------------------------------------------------------------------------------------------------------------------------

PRODUCED DATA SET:

The created tidy data set "tidy_data.txt" is the so-called "wide" and meets the following principles (Hadley Wickham, 2011):

1) Each variable forms a separate column (variable names (could be checked by the str() function) respond to column names (could be checked with names() function). Column names are variable names.
2) Each observation forms a row (number of observations (could be checked by the str() function) responds to the number of rows in a tidy dataframe (could be checked with nrow() function)).
3) Each type of observational unit forms a table - in this case, one observational unit responds to one table;
4) Data is filtered (duplicated rows are removed, if occured); 
5) Variable names consist of letters, numbers and underscores (unnecessary characters are removed).

--------------------------------------------------------------------------------------------------------------------------------------------------------
