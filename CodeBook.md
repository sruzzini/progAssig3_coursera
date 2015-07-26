##Study Design
============
All data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  You can find more information about the study at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

All the formatting that was done to the raw data from the .zip file, was done by running "run_analysis.R", which is located in this directory.  The Raw data that was used comes from the "train" and "test" directories.  To format this data yourself, run the "run_analysis.R" script in the same directory structure that is shown here in the repository.  The data is read using relative addressing to the working directory.  Please ensure that you are running the script with R version 3.1.3 on a 64-bit PC running Windows 8 (this was my setup).

##Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

##Variables
=========

subject : *int* <br />
	The number indentifier for a particular subject in the study corresponding to the measurements in the row<br />
activity : *chr*<br />
	The activity corresponding to the measurements in the row<br />
Avg_tBodyAcc_XMean : *numeric*<br />
	Average of all body acceleration means for the given subject and activity in the X plane<br />
Avg_tBodyAcc_YMean : *numeric*<br />
	Average of all body acceleration means for the given subject and activity in the Y plane<br />
Avg_tBodyAcc_ZMean : *numeric*<br />
	Average of all body acceleration means for the given subject and activity in the Z plane<br />
Avg_tBodyAcc_XStd : *numeric*<br />
	Average of all body acceleration standard deviations for the given subject and activity in the X plane<br />
Avg_tBodyAcc_YStd : *numeric*<br />
	Average of all body acceleration standard deviations for the given subject and activity in the Y plane<br />
Avg_tBodyAcc_ZStd : *numeric*<br />
	Average of all body acceleration standard deviations for the given subject and activity in the Z plane<br />
Avg_tGravityAcc_XMean : *numeric*<br />
	Average of all gravity acceleration means for the given subject and activity in the X plane<br />
Avg_tGravityAcc_YMean : *numeric*<br />
	Average of all gravity acceleration means for the given subject and activity in the Y plane<br />
Avg_tGravityAcc_ZMean : *numeric*<br />
	Average of all gravity acceleration means for the given subject and activity in the Z plane<br />
Avg_tGravityAcc_XStd : *numeric*<br />
	Average of all gravity acceleration standard deviations for the given subject and activity in the X plane<br />
Avg_tGravityAcc_YStd : *numeric*<br />
	Average of all gravity acceleration standard deviations for the given subject and activity in the Y plane<br />
Avg_tGravityAcc_ZStd : *numeric*<br />
	Average of all gravity acceleration standard deviations for the given subject and activity in the Z plane<br />
Avg_tBodyAccJerk_XMean : *numeric*<br />
	Average of all body acceleration jerk means for the given subject and activity in the X plane<br />
Avg_tBodyAccJerk_YMean : *numeric*<br />
	Average of all body acceleration jerk means for the given subject and activity in the Y plane<br />
Avg_tBodyAccJerk_ZMean : *numeric*<br />
	Average of all body acceleration jerk means for the given subject and activity in the Z plane<br />
Avg_tBodyAccJerk_XStd : *numeric*<br />
	Average of all body acceleration jerk standard deviations for the given subject and activity in the X plane<br />
Avg_tBodyAccJerk_YStd : *numeric*<br />
	Average of all body acceleration jerk standard deviations for the given subject and activity in the Y plane<br />
Avg_tBodyAccJerk_ZStd : *numeric*<br />
	Average of all body acceleration jerk standard deviations for the given subject and activity in the Z plane<br />
Avg_tBodyGyro_XMean : *numeric*<br />
	Average of all body gyroscope means for the given subject and activity in the X plane<br />
Avg_tBodyGyro_YMean : *numeric*<br />
	Average of all body gyroscope means for the given subject and activity in the Y plane<br />
Avg_tBodyGyro_ZMean : *numeric*
	Average of all body gyroscope means for the given subject and activity in the Z plane
Avg_tBodyGyro_XStd : *numeric*
	Average of all body gyroscope standard deviations for the given subject and activity in the X plane
Avg_tBodyGyro_YStd : *numeric*
	Average of all body gyroscope standard deviations for the given subject and activity in the Y plane
Avg_tBodyGyro_ZStd : *numeric*
	Average of all body gyroscope standard deviations for the given subject and activity in the Z plane
Avg_tBodyGyroJerk_XMean : *numeric*
	Average of all body gyroscope jerk means for the given subject and activity in the X plane
Avg_tBodyGyroJerk_YMean : *numeric*
	Average of all body gyroscope jerk means for the given subject and activity in the Z plane
Avg_tBodyGyroJerk_ZMean : *numeric*
	Average of all body gyroscope jerk means for the given subject and activity in the Z plane
Avg_tBodyGyroJerk_XStd : *numeric*
	Average of all body gyroscope jerk standard deviations for the given subject and activity in the X plane
Avg_tBodyGyroJerk_YStd : *numeric*
	Average of all body gyroscope jerk standard deviations for the given subject and activity in the Z plane
Avg_tBodyGyroJerk_ZStd : *numeric*
	Average of all body gyroscope jerk standard deviations for the given subject and activity in the Z plane
Avg_tBodyAccMag_Mean : *numeric*
	Average of all body acceleration magnitude means for the given subject and activity
Avg_tBodyAccMag_Std : *numeric*
	Average of all body acceleration magnitude standard deviations for the given subject and activity
Avg_tGravityAccMag_Mean : *numeric*
	Average of all gravity acceleration magnitude means for the given subject and activity
Avg_tGravityAccMag_Std : *numeric*
	Average of all gravity acceleration magnitude standard deviations for the given subject and activity
Avg_tBodyAccJerkMag_Mean : *numeric*
	Average of all body acceleration jerk magnitude means for the given subject and activity
Avg_tBodyAccJerkMag_Std : *numeric*
	Average of all body acceleration jerk magnitude standard deviations for the given subject and activity
Avg_tBodyGyroMag_Mean : *numeric*
	Average of all body gyroscope magnitude means for the given subject and activity
Avg_tBodyGyroMag_Std : *numeric*
	Average of all body gyroscope magnitude standard deviations for the given subject and activity
Avg_tBodyGyroJerkMag_Mean : *numeric*
	Average of all body gyroscope jerk magnitude means for the given subject and activity
Avg_tBodyGyroJerkMag_Std : *numeric*
	Average of all body gyroscope jerk magnitude standard deviations for the given subject and activity
Avg_fBodyAcc_XMean : *numeric*
	Average of all body acceleration means for the given subject and activity in the X plane
Avg_fBodyAcc_YMean : *numeric*
	Average of all body acceleration means for the given subject and activity in the Y plane
Avg_fBodyAcc_ZMean : *numeric*
	Average of all body acceleration means for the given subject and activity in the Z plane
Avg_fBodyAcc_XStd : *numeric*
	Average of all body acceleration standard deviations for the given subject and activity in the X plane
Avg_fBodyAcc_YStd : *numeric*
	Average of all body acceleration standard deviations for the given subject and activity in the Y plane
Avg_fBodyAcc_ZStd : *numeric*
	Average of all body acceleration standard deviations for the given subject and activity in the Z plane
Avg_fBodyAccJerk_XMean : *numeric*
	Average of all body acceleration jerk means for the given subject and activity in the X plane
Avg_fBodyAccJerk_YMean : *numeric*
	Average of all body acceleration jerk means for the given subject and activity in the Y plane
Avg_fBodyAccJerk_ZMean : *numeric*
	Average of all body acceleration jerk means for the given subject and activity in the Z plane
Avg_fBodyAccJerk_XStd : *numeric*
	Average of all body acceleration jerk standard deviations for the given subject and activity in the X plane
Avg_fBodyAccJerk_YStd : *numeric*
	Average of all body acceleration jerk standard deviations for the given subject and activity in the Y plane
Avg_fBodyAccJerk_ZStd : *numeric*
	Average of all body acceleration jerk standard deviations for the given subject and activity in the Z plane
Avg_fBodyGyro_XMean : *numeric*
	Average of all body gyroscope means for the given subject and activity in the X plane
Avg_fBodyGyro_YMean : *numeric*
	Average of all body gyroscope means for the given subject and activity in the Y plane
Avg_fBodyGyro_ZMean : *numeric*
	Average of all body gyroscope means for the given subject and activity in the Z plane
Avg_fBodyGyro_XStd : *numeric*
	Average of all body gyroscope standard deviations for the given subject and activity in the X plane
Avg_fBodyGyro_YStd : *numeric*
	Average of all body gyroscope standard deviations for the given subject and activity in the Y plane
Avg_fBodyGyro_ZStd : *numeric*
	Average of all body gyroscope standard deviations for the given subject and activity in the Z plane
Avg_fBodyAccMag_Mean : *numeric*
	Average of all body acceleration magnitude means for the given subject and activity
Avg_fBodyAccMag_Std : *numeric*
	Average of all body acceleration magnitude standard deviations for the given subject and activity
Avg_fBodyAccJerkMag_Mean : *numeric*
	Average of all body acceleration jerk magnitude means for the given subject and activity
Avg_fBodyAccJerkMag_Std : *numeric*
	Average of all body acceleration jerk magnitude standard deviations for the given subject and activity
Avg_fBodyGyroMag_Mean : *numeric*
	Average of all body gyroscope magnitude means for the given subject and activity
Avg_fBodyGyroMag_Std : *numeric*
	Average of all body gyroscope magnitude standard deviations for the given subject and activity
Avg_fBodyGyroJerMag_Mean : *numeric*
	Average of all body gyroscope jerk magnitude means for the given subject and activity
Avg_fBodyGyroJerkMag_Std : *numeric*
	Average of all body gyroscope jerk magnitude standard deviations for the given subject and activity