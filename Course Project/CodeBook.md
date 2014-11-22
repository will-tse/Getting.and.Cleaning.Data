## Code Book

### Data Source
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Transformation Process of the Data
In R script call run_analysis.R that does the following.
Step 0 	- Setup Working Direcotry and remove all exisiting objects.

Step 1 	- Merges the training and the test sets to create one data set.
	
	- Inputput:	features.txt, activity_labels.txt, x_train.txt, y_train.txt, subject_train.txt, x_test.txt, y_test.txt, sbject_test.txt
	
	- Output: 	data_set

Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

	- Method: Keep only activity_id, subject_id, and any column contains mean() or std() (not meanFreq())

Step 3 - Uses descriptive activity names to name the activities in the data set

	- Method: use merge() function include activity names.

Step 4 - Appropriately labels the data set with descriptive variable names. 

	- Change: mean -> Mean, std -> StandardDeviation, Acc -> Acceleration, Mag -> Magnitude
	- Change: ^t -> TimeDomain, ^f -> FrequencyDomain

Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

	- Method: Output Step 4 to text file called 'tidy_data_set

### Output Variables 
- activity_id
- activity_type
- subject_id
- TimeDomain.BodyAcceleration.Mean...X
- TimeDomain.BodyAcceleration.Mean...Y
- TimeDomain.BodyAcceleration.Mean...Z
- TimeDomain.BodyAcceleration.StandardDeviation...X
- TimeDomain.BodyAcceleration.StandardDeviation...Y
- TimeDomain.BodyAcceleration.StandardDeviation...Z
- TimeDomain.GravityAcceleration.Mean...X
- TimeDomain.GravityAcceleration.Mean...Y
- TimeDomain.GravityAcceleration.Mean...Z
- TimeDomain.GravityAcceleration.StandardDeviation...X
- TimeDomain.GravityAcceleration.StandardDeviation...Y
- TimeDomain.GravityAcceleration.StandardDeviation...Z
- TimeDomain.BodyAccelerationJerk.Mean...X
- TimeDomain.BodyAccelerationJerk.Mean...Y
- TimeDomain.BodyAccelerationJerk.Mean...Z
- TimeDomain.BodyAccelerationJerk.StandardDeviation...X
- TimeDomain.BodyAccelerationJerk.StandardDeviation...Y
- TimeDomain.BodyAccelerationJerk.StandardDeviation...Z
- TimeDomain.BodyGyro.Mean...X
- TimeDomain.BodyGyro.Mean...Y
- TimeDomain.BodyGyro.Mean...Z
- TimeDomain.BodyGyro.StandardDeviation...X
- TimeDomain.BodyGyro.StandardDeviation...Y
- TimeDomain.BodyGyro.StandardDeviation...Z
- TimeDomain.BodyGyroJerk.Mean...X
- TimeDomain.BodyGyroJerk.Mean...Y
- TimeDomain.BodyGyroJerk.Mean...Z
- TimeDomain.BodyGyroJerk.StandardDeviation...X
- TimeDomain.BodyGyroJerk.StandardDeviation...Y
- TimeDomain.BodyGyroJerk.StandardDeviation...Z
- TimeDomain.BodyAccelerationMagnitude.Mean..
- TimeDomain.BodyAccelerationMagnitude.StandardDeviation..
- TimeDomain.GravityAccelerationMagnitude.Mean..
- TimeDomain.GravityAccelerationMagnitude.StandardDeviation..
- TimeDomain.BodyAccelerationJerkMagnitude.Mean..
- TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation..
- TimeDomain.BodyGyroMagnitude.Mean..
- TimeDomain.BodyGyroMagnitude.StandardDeviation..
- TimeDomain.BodyGyroJerkMagnitude.Mean..
- TimeDomain.BodyGyroJerkMagnitude.StandardDeviation..
- FrequencyDomain.BodyAcceleration.Mean...X
- FrequencyDomain.BodyAcceleration.Mean...Y
- FrequencyDomain.BodyAcceleration.Mean...Z
- FrequencyDomain.BodyAcceleration.StandardDeviation...X
- FrequencyDomain.BodyAcceleration.StandardDeviation...Y
- FrequencyDomain.BodyAcceleration.StandardDeviation...Z
- FrequencyDomain.BodyAccelerationJerk.Mean...X
- FrequencyDomain.BodyAccelerationJerk.Mean...Y
- FrequencyDomain.BodyAccelerationJerk.Mean...Z
- FrequencyDomain.BodyAccelerationJerk.StandardDeviation...X
- FrequencyDomain.BodyAccelerationJerk.StandardDeviation...Y
- FrequencyDomain.BodyAccelerationJerk.StandardDeviation...Z
- FrequencyDomain.BodyGyro.Mean...X
- FrequencyDomain.BodyGyro.Mean...Y
- FrequencyDomain.BodyGyro.Mean...Z
- FrequencyDomain.BodyGyro.StandardDeviation...X
- FrequencyDomain.BodyGyro.StandardDeviation...Y
- FrequencyDomain.BodyGyro.StandardDeviation...Z
- FrequencyDomain.BodyAccelerationMagnitude.Mean..
- FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation..
- FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean..
- FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation..
- FrequencyDomain.BodyBodyGyroMagnitude.Mean..
- FrequencyDomain.BodyBodyGyroMagnitude.StandardDeviation..
- FrequencyDomain.BodyBodyGyroJerkMagnitude.Mean..
- FrequencyDomain.BodyBodyGyroJerkMagnitude.StandardDeviation..
