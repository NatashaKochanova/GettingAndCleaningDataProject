# 1) Reading sets into R

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# 2) Using descriptive activity names to name the activities in y_test and y_train data sets

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity_labels_clean <- gsub("_", " ", activity_labels$V2)
activity_labels_clean_factor <- as.factor(activity_labels_clean)

y_test_factor <- as.factor(y_test[,1])
levels(y_test_factor) <- activity_labels_clean_factor

y_train_factor <- as.factor(y_train[,1])
levels(y_train_factor) <- activity_labels_clean_factor

# 3) Making train and test data sets

test <- cbind(X_test, y_test_factor, subject_test)
train <- cbind(X_train, y_train_factor, subject_train)

# 4) Appropriately labeling the data sets with descriptive variable names

features <- read.table("./UCI HAR Dataset/features.txt")
features2 <- features[,2]
features2_char <- as.character(features2)
features2_char <- append(features2_char, c("Activity", "Subject_id"))
names(test) <- paste(features2_char)
names(train) <- paste(features2_char)
  
# 5) Merging the training and the test sets to create one data set
tt <- rbind(test,train)
  
# 6) Extracting only the measurements on the mean and standard deviation for each measurement. 

tt_final_mean <- tt[grepl("mean\\(\\)" , names(tt))]
tt_final_std <- tt[grepl("std\\(\\)" , names(tt))]
tt_final_subs_act <- tt[, c("Activity", "Subject_id")]
tt_mean_std <- cbind(tt_final_mean, tt_final_std, tt_final_subs_act)

  # Removing duplicated rows in case there are some
  tt_mean_std <- tt_mean_std[!duplicated(tt_mean_std),]
 
# 7) Creating a second, independent tidy data set with the average of each variable for each activity and each subject. 
  
  #Creating the set
  library(plyr)
  final <- ddply(tt_mean_std, ~ Activity + Subject_id, numcolwise(mean))
  
  #Cleaning descriptive variable names from "-" and "()"
  names(final) <- gsub("[()-+]", " ", names(final))
  names(final) <- gsub("  ", "_", names(final))
  names(final) <- gsub("-", "_", names(final))
  names(final) <- gsub("\\_$", "", names(final))
  names(final) <- gsub("\\__", "_", names(final))
  
  #Writing the set into the text file
  write.table(final, "tidy_data.txt", row.names=FALSE, col.names=TRUE, sep="\t", quote=FALSE)
