##Stephen T. Ruzzini
##Getting and Cleaning Data
##Course Project
##run_analysis.R


##1. Merges the training and the test sets to create one data set
## Read in the 2 sets
train <- read.table(file="train/X_train.txt");
test <- read.table(file="test/X_test.txt");

## Merge the 2 sets into one with rbind
allData <- rbind(train, test);
rm(train);
rm(test);

##2. Extracts only the measurements on the mean and standard deviation for each measurement
## vector of column indices with mean and std data
indices <- c(1,2,3,4,5,6,
			 41,42,43,44,45,46,
			 81,82,83,84,85,86,
			 121,122,123,124,125,126,
			 161,162,163,164,165,166,
			 201,202,
			 214,215,
			 227,228,
			 240,241,
			 253,254,
			 266,267,268,269,270,271,
			 345,346,347,348,349,350,
			 424,425,426,427,428,429,
			 503,504,
			 516,517,
			 529,530,
			 542,543);

##4. Appropriately labels the data set with descriptive variable names
## vector of column headers
colHeaders <- c("tBodyAcc_XMean","tBodyAcc_YMean","tBodyAcc_ZMean","tBodyAcc_XStd","tBodyAcc_YStd","tBodyAcc_ZStd",
				"tGravityAcc_XMean","tGravityAcc_YMean","tGravityAcc_ZMean","tGravityAcc_XStd","tGravityAcc_YStd","tGravityAcc_ZStd",
				"tBodyAccJerk_XMean","tBodyAccJerk_YMean","tBodyAccJerk_ZMean","tBodyAccJerk_XStd","tBodyAccJerk_YStd","tBodyAccJerk_ZStd",
				"tBodyGyro_XMean","tBodyGyro_YMean","tBodyGyro_ZMean","tBodyGyro_XStd","tBodyGyro_YStd","tBodyGyro_ZStd",
				"tBodyGyroJerk_XMean","tBodyGyroJerk_YMean","tBodyGyroJerk_ZMean","tBodyGyroJerk_XStd","tBodyGyroJerk_YStd","tBodyGyroJerk_ZStd",
				"tBodyAccMag_Mean","tBodyAccMag_Std",
				"tGravityAccMag_Mean","tGravityAccMag_Std",
				"tBodyAcJerkcMag_Mean","tBodyAccJerkMag_Std",
				"tBodyGyroMag_Mean","tBodyGyroMag_Std",
				"tBodyGyroJerkMag_Mean","tBodyGyroJerkMag_Std",
				"fBodyAcc_XMean","fBodyAcc_YMean","fBodyAcc_ZMean","fBodyAcc_XStd","fBodyAcc_YStd","fBodyAcc_ZStd",
				"fBodyAccJerk_XMean","fBodyAccJerk_YMean","fBodyAccJerk_ZMean","fBodyAccJerk_XStd","fBodyAccJerk_YStd","fBodyAccJerk_ZStd",
				"fBodyGyro_XMean","fBodyGyro_YMean","fBodyGyro_ZMean","fBodyGyro_XStd","fBodyGyro_YStd","fBodyGyro_ZStd",
				"fBodyAccMag_Mean","fBodyAccMag_Std",
				"fBodyAccJerkMag_Mean","fBodyAccJerkMag_Std",
				"fBodyGyroMag_Mean","fBodyGyroMag_Std",
				"fBodyGyroJerMag_Mean","fBodyGyroJerkMag_Std");
## trim the dataset and apply the column headers
allData <- allData[,indices];
colnames(allData) <- colHeaders;


##3. Uses descriptive activity names to name the activities in the data set
##get all activities and rename the header
activitiesTrain <- read.table(file="train/y_train.txt");
activitiesTest <- read.table(file="test/y_test.txt");
allActivities <- rbind(activitiesTrain, activitiesTest);
rm(activitiesTest);
rm(activitiesTrain);
colnames(allActivities) <- "activity";

##rename the values to english
allActivities$activity[allActivities$activity==1] <- "Walking";
allActivities$activity[allActivities$activity==2] <- "Walking_Upstairs";
allActivities$activity[allActivities$activity==3] <- "Walking_Downstairs";
allActivities$activity[allActivities$activity==4] <- "Sitting";
allActivities$activity[allActivities$activity==5] <- "Standing";
allActivities$activity[allActivities$activity==6] <- "Laying";

##get all subjects and rename the header
subjectsTrain <- read.table(file="train/subject_train.txt");
subjectsTest <- read.table(file="test/subject_test.txt");
allSubjects <- rbind(subjectsTrain, subjectsTest);
rm(subjectsTrain);
rm(subjectsTest);
colnames(allSubjects) <- "subject";

##merge all into 1 final dataset
finalTidy <- cbind(allSubjects, allActivities, allData);
rm(allData);
rm(allActivities);
rm(allSubjects);


##5. From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.

acts <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying");
colHeaders2 <- c("subject","activity",
				"Avg_tBodyAcc_XMean","Avg_tBodyAcc_YMean","Avg_tBodyAcc_ZMean","Avg_tBodyAcc_XStd","Avg_tBodyAcc_YStd","Avg_tBodyAcc_ZStd",
				"Avg_tGravityAcc_XMean","Avg_tGravityAcc_YMean","Avg_tGravityAcc_ZMean","Avg_tGravityAcc_XStd","Avg_tGravityAcc_YStd","Avg_tGravityAcc_ZStd",
				"Avg_tBodyAccJerk_XMean","Avg_tBodyAccJerk_YMean","Avg_tBodyAccJerk_ZMean","Avg_tBodyAccJerk_XStd","Avg_tBodyAccJerk_YStd","Avg_tBodyAccJerk_ZStd",
				"Avg_tBodyGyro_XMean","Avg_tBodyGyro_YMean","Avg_tBodyGyro_ZMean","Avg_tBodyGyro_XStd","Avg_tBodyGyro_YStd","Avg_tBodyGyro_ZStd",
				"Avg_tBodyGyroJerk_XMean","Avg_tBodyGyroJerk_YMean","Avg_tBodyGyroJerk_ZMean","Avg_tBodyGyroJerk_XStd","Avg_tBodyGyroJerk_YStd","Avg_tBodyGyroJerk_ZStd",
				"Avg_tBodyAccMag_Mean","Avg_tBodyAccMag_Std",
				"Avg_tGravityAccMag_Mean","Avg_tGravityAccMag_Std",
				"Avg_tBodyAcJerkcMag_Mean","Avg_tBodyAccJerkMag_Std",
				"Avg_tBodyGyroMag_Mean","Avg_tBodyGyroMag_Std",
				"Avg_tBodyGyroJerkMag_Mean","Avg_tBodyGyroJerkMag_Std",
				"Avg_fBodyAcc_XMean","Avg_fBodyAcc_YMean","Avg_fBodyAcc_ZMean","Avg_fBodyAcc_XStd","Avg_fBodyAcc_YStd","Avg_fBodyAcc_ZStd",
				"Avg_fBodyAccJerk_XMean","Avg_fBodyAccJerk_YMean","Avg_fBodyAccJerk_ZMean","Avg_fBodyAccJerk_XStd","Avg_fBodyAccJerk_YStd","Avg_fBodyAccJerk_ZStd",
				"Avg_fBodyGyro_XMean","Avg_fBodyGyro_YMean","Avg_fBodyGyro_ZMean","Avg_fBodyGyro_XStd","Avg_fBodyGyro_YStd","Avg_fBodyGyro_ZStd",
				"Avg_fBodyAccMag_Mean","Avg_fBodyAccMag_Std",
				"Avg_fBodyAccJerkMag_Mean","Avg_fBodyAccJerkMag_Std",
				"Avg_fBodyGyroMag_Mean","Avg_fBodyGyroMag_Std",
				"Avg_fBodyGyroJerMag_Mean","Avg_fBodyGyroJerkMag_Std");

finalTidy2 <- data.frame(stringsAsFactors=FALSE);
subs <- c();
acs <- c();

##loop through subjects
for(s in 1:30)
{
	##loop through activities
	for(a in 1:6)
	{
		##list to be appended to finalTidy2
		curr <- c();
		subs <- c(subs, s);
		acs <- c(acs, acts[a]);
		##lop through 
		for(v in 3:68)
		{
			curr <- c(curr,mean(finalTidy[(finalTidy$subject==s & finalTidy$activity==acts[a]),v]));
		}
		##append the row to finalTidy2
		finalTidy2 = rbind(finalTidy2, curr);
		rm(curr);
	}
}
rownames(finalTidy2) <- NULL;
finalTidy2 <- cbind(subs, acs, finalTidy2);
colnames(finalTidy2) <- colHeaders2;

##write out the data sets to 2 separate files
write.table(finalTidy, "tidy_dataset_1.txt", row.names=FALSE);
write.table(finalTidy2, "tidy_dataset_2.txt", row.names=FALSE);