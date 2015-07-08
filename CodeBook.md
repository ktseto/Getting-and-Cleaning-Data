---
title: ""
output: html_document
---

<center> <h1>CodeBook</h1> </center>

### Source Data

Source data is obtained from the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The data is originally obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The source data is divided into the test group and the training group.  Each group's data is split into three files, "X", "y", and "subject".  Not all files in the zip file are used; the following is a brief description of the files used for this project:

./test/X_test.txt

* Test group data; 2,947 rows, 561 columns  

./test/y_test.txt

* Test group activity id; 2,947 rows, 1 column

./test/subject_test.txt

* Test group subject id; 2,947 rows, 1 column

./train/X_train.txt

* Training group data; 7,352 rows, 561 columns

./train/y_train.txt

* Training group activity id; 7,352 rows, 1 column

./train/subject_train.txt

* Training group subject id; 7,352 rows, 1 column

./activity_labels.txt

* Description for each activity id; 6 rows, 2 columns

./features.txt

* Descriptive column names for X_test and X_train; 561 rows, 2 columns

### Data Processing

The script run_analysis.R contains the code to combine and transform the files above.  The following is a brief description of the code:

First, for each of "X", "y", and "subject" data, append the training group to the test group.  Each of the data set now has 2,947 + 7,352 = 10,299 rows.  Then, keep only the columns relevant to this project in the "X" data set, i.e. those that measure mean and standard deviation.  For details regarding these columns, see the following section.

Next, append the column in "y" and "subject" to "X", and merge the resulting table with the descriptive tables from activity_labels.txt and features.txt.  Finally, summarize the table by taking the mean of each column, grouping by activity and subject.  The tidy table is then output as tidy.txt.

### Data Dictionary

Most of the information in this section is extracted from features.txt and features_info.txt, both available in the zip file containing the source data.  For more information about the columns, refer to these files.

The numeric columns in the tidy data set are organized in the following manner:

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

where the prefix "t" indicates time and "f" frequency domain signals, acceleration from the accelerometer (Acc) is divided into Body and Gravity, Jerk indicates jerk signals, Gyro means gyroscope, and Mag is the magnitude of signals calculated using the Euclidean norm.  For each column name, "mean()" indicates mean value of the measurement, where "std()" indicates standard deviation of the measurement.  

Acceleration signal is in standard gravity units 'g', while angular velocity measured by the gyroscope is in radians/second.  

These are all the columns from the tidy data set:

activity

* Six activities: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

subject

* Subject IDs: integer ranging from 1 to 30

The following 79 numeric columns follow the description at the beginning of this section:  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyAccMag-meanFreq()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-meanFreq()  