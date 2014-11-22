library(plyr);

# Setp 0 - Setup Working Directory and remove all exisiting objects
rm(list=ls());
setwd('D:/Coursera/Johns Hopkins/Data Science/03 - Getting and Cleaning Data/Course Project');

# Step 1 - Merges the training and the test sets to create one data set.
feature_value <- read.table('./UCI HAR Dataset/features.txt',header=FALSE);
activity_label <- read.table('./UCI HAR Dataset/activity_labels.txt',header=FALSE, col.names=c('activity_id','activity_type')); 


x_train <- read.table('./UCI HAR Dataset/train/X_train.txt', header=FALSE, col.names=feature_value[,2]);
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt', header=FALSE, col.names=c('activity_id'));
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt', header=FALSE, col.names=c('subject_id'));

x_test <- read.table('./UCI HAR Dataset/test/X_test.txt', header=FALSE, col.names=feature_value[,2]);
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt', header=FALSE, col.names=c('activity_id'));
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt', header=FALSE, col.names=c('subject_id'));

data_set <- rbind(cbind(y_train, subject_train, x_train), cbind(y_test, subject_test, x_test));


# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
measurement_column <- grep('-(mean|std)\\(\\)', feature_value[, 2]);

# Include the first 2 columns (activity_id and subject_id).
# Therefore, we need to shift measurement_coumn by 2 columns.
final_data_set <- data_set[,c(1, 2, measurement_column + 2)];

# Step 3 - Uses descriptive activity names to name the activities in the data set.
final_data_set <- merge(final_data_set, activity_label, by='activity_id', all.x=TRUE);

# Step 4 - Appropriately labels the data set with descriptive variable names.
names(final_data_set) <- gsub('\\(\\)','', names(final_data_set), perl = TRUE);
names(final_data_set) <- gsub('^t','TimeDomain.', names(final_data_set));
names(final_data_set) <- gsub('^f','FrequencyDomain.', names(final_data_set));
names(final_data_set) <- gsub('Acc','Acceleration', names(final_data_set));
names(final_data_set) <- gsub('Mag','Magnitude', names(final_data_set));
names(final_data_set) <- gsub('mean','Mean', names(final_data_set));
names(final_data_set) <- gsub('std','StandardDeviation', names(final_data_set));

# Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
#          for each activity and each subject.
final_out <- ddply(final_data_set, c('activity_id', 'activity_type', 'subject_id'), numcolwise(mean));
write.table(final_out, file='tidy_data_set.txt', row.name=FALSE);