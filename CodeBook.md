# Code book for the CleanDataProject

## Data description

### Input data

The input data were downloaded from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
And uncompressed into the root directory of the local git repository in a folder called "UCI HAR Dataset".

As input the following files were used:

* ./UCI HAR Dataset/features.txt
* ./UCI HAR Dataset/train/X_train.txt
* ./UCI HAR Dataset/train/Y_train.txt
* ./UCI HAR Dataset/test/X_test.txt
* ./UCI HAR Dataset/test/Y_test.txt
* ./UCI HAR Dataset/train/subject_train.txt
* ./UCI HAR Dataset/test/subject_test.txt
* ./UCI HAR Dataset/activity_labels.txt

### Transformation

The data in features.txt were used give names to the columns. 
The names were transformed first by replacing the "(", ")", "-", "," characters to "_".
Then the leading "t" was changed to "time_" and the leading "f", changed to "freq_".


 obtained by reading and merging X_Train.txt and X_Test.txt.

These data were also used to extract the measurements for mean and std from the original features which contained 561 measurements.

The data in subject_train.txt and subject_test.txt were used a column in the merged dataset. The name of this column is "Subject"

The data in the Y_train and Y_test files were used to link the activities to the data in the activity_labels file. 
The merge was done via a rbind of Y_train and Y_test followed by a a merge with activity_labels.

### Output data description
__Field        Type        Description__

Subject        Integer        The Id/Code of he subject. Values from 1 to 30

Activity        Factor        The label for the activity. Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

time_Body_Acc_mean_X        Double        Time domain mean for BodyAcc axis X

time_Body_Acc_mean_Y        Double        Time domain mean for BodyAcc axis Y

time_Body_Acc_mean_Z        Double        Time domain mean for BodyAcc axis Z

time_Body_Acc_std_X        Double        Time domain std for BodyAcc axis X

time_Body_Acc_std_Y        Double        Time domain std for BodyAcc axis Y

time_Body_Acc_std_Z        Double        Time domain std for BodyAcc axis Z

time_GravityAcc_mean_X        Double        Time domain mean for GravityAcc axis X

time_GravityAcc_mean_Y        Double        Time domain mean for GravityAcc axis Y

time_GravityAcc_mean_Z        Double        Time domain mean for GravityAcc axis Z

time_GravityAcc_std_X        Double        Time domain std for GravityAcc axis X

time_GravityAcc_std_Y        Double        Time domain std for GravityAcc axis Y

time_GravityAcc_std_Z        Double        Time domain std for GravityAcc axis Z

time_Body_AccJerk_mean_X        Double        Time domain mean for BodyAccJerk axis X

time_Body_AccJerk_mean_Y        Double        Time domain mean for BodyAccJerk axis Y

time_Body_AccJerk_mean_Z        Double        Time domain mean for BodyAccJerk axis Z

time_Body_AccJerk_std_X        Double        Time domain std for BodyAccJerk axis X

time_Body_AccJerk_std_Y        Double        Time domain std for BodyAccJerk axis Y

time_Body_AccJerk_std_Z        Double        Time domain std for BodyAccJerk axis Z

time_Body_Gyro_mean_X        Double        Time domain mean for BodyGyro axis X

time_Body_Gyro_mean_Y        Double        Time domain mean for BodyGyro axis Y

time_Body_Gyro_mean_Z        Double        Time domain mean for BodyGyro axis Z

time_Body_Gyro_std_X        Double        Time domain std for BodyGyro axis X

time_Body_Gyro_std_Y        Double        Time domain std for BodyGyro axis Y

time_Body_Gyro_std_Z        Double        Time domain std for BodyGyro axis Z

time_Body_GyroJerk_mean_X        Double        Time domain mean for BodyGyroJerk axis X

time_Body_GyroJerk_mean_Y        Double        Time domain mean for BodyGyroJerk axis Y

time_Body_GyroJerk_mean_Z        Double        Time domain mean for BodyGyroJerk axis Z

time_Body_GyroJerk_std_X        Double        Time domain std for BodyGyroJerk axis X

time_Body_GyroJerk_std_Y        Double        Time domain std for BodyGyroJerk axis Y

time_Body_GyroJerk_std_Z        Double        Time domain std for BodyGyroJerk axis Z

time_Body_AccMag_mean       Double        Time domain mean for BodyAccMag

time_Body_AccMag_std       Double        Time domain std for BodyAccMag

time_GravityAccMag_mean       Double        Time domain mean for GravityAccMag

time_GravityAccMag_std       Double        Time domain std for GravityAccMag

time_Body_AccJerkMag_mean       Double        Time domain mean for BodyAccJerkMag

time_Body_AccJerkMag_std       Double        Time domain std for BodyAccJerkMag

time_Body_GyroMag_mean       Double        Time domain mean for BodyGyroMag

time_Body_GyroMag_std       Double        Time domain std for BodyGyroMag

time_Body_GyroJerkMag_mean       Double        Time domain mean for BodyGyroJerkMag

time_Body_GyroJerkMag_std       Double        Time domain std for BodyGyroJerkMag

freq_Body_Acc_mean_X        Double        Frequency domain mean for BodyAcc for axis X

freq_Body_Acc_mean_Y        Double        Frequency domain mean for BodyAcc for axis Y

freq_Body_Acc_mean_Z        Double        Frequency domain mean for BodyAcc for axis Z

freq_Body_Acc_std_X        Double        Frequency domain std for BodyAcc for axis X

freq_Body_Acc_std_Y        Double        Frequency domain std for BodyAcc for axis Y

freq_Body_Acc_std_Z        Double        Frequency domain std for BodyAcc for axis Z

freq_Body_Acc_meanFreq_X        Double        Frequency domain mean for BodyAcc for axis X

freq_Body_Acc_meanFreq_Y        Double        Frequency domain mean for BodyAcc for axis Y

freq_Body_Acc_meanFreq_Z        Double        Frequency domain mean for BodyAcc for axis Z

freq_Body_AccJerk_mean_X        Double        Frequency domain mean for BodyAccJerk for axis X

freq_Body_AccJerk_mean_Y        Double        Frequency domain mean for BodyAccJerk for axis Y

freq_Body_AccJerk_mean_Z        Double        Frequency domain mean for BodyAccJerk for axis Z

freq_Body_AccJerk_std_X        Double        Frequency domain std for BodyAccJerk for axis X

freq_Body_AccJerk_std_Y        Double        Frequency domain std for BodyAccJerk for axis Y

freq_Body_AccJerk_std_Z        Double        Frequency domain std for BodyAccJerk for axis Z

freq_Body_AccJerk_meanFreq_X        Double        Frequency domain mean for BodyAccJerk for axis X

freq_Body_AccJerk_meanFreq_Y        Double        Frequency domain mean for BodyAccJerk for axis Y

freq_Body_AccJerk_meanFreq_Z        Double        Frequency domain mean for BodyAccJerk for axis Z

freq_Body_Gyro_mean_X        Double        Frequency domain mean for BodyGyro for axis X

freq_Body_Gyro_mean_Y        Double        Frequency domain mean for BodyGyro for axis Y

freq_Body_Gyro_mean_Z        Double        Frequency domain mean for BodyGyro for axis Z

freq_Body_Gyro_std_X        Double        Frequency domain std for BodyGyro for axis X

freq_Body_Gyro_std_Y        Double        Frequency domain std for BodyGyro for axis Y

freq_Body_Gyro_std_Z        Double        Frequency domain std for BodyGyro for axis Z

freq_Body_Gyro_meanFreq_X        Double        Frequency domain mean for BodyGyro for axis X

freq_Body_Gyro_meanFreq_Y        Double        Frequency domain mean for BodyGyro for axis Y

freq_Body_Gyro_meanFreq_Z        Double        Frequency domain mean for BodyGyro for axis Z

freq_Body_AccMag_mean       Double        Frequency domain mean for BodyAccMag

freq_Body_AccMag_std       Double        Frequency domain std for BodyAccMag

freq_Body_AccMag_meanFreq       Double        Frequency domain mean for BodyAccMag

freq_BodyBody_AccJerkMag_mean       Double        Frequency domain mean for BodyBodyAccJerkMag

freq_BodyBody_AccJerkMag_std       Double        Frequency domain std for BodyBodyAccJerkMag

freq_BodyBody_AccJerkMag_meanFreq       Double        Frequency domain mean for BodyBodyAccJerkMag

freq_BodyBody_GyroMag_mean       Double        Frequency domain mean for BodyBodyGyroMag

freq_BodyBody_GyroMag_std       Double        Frequency domain std for BodyBodyGyroMag

freq_BodyBody_GyroMag_meanFreq       Double        Frequency domain mean for BodyBodyGyroMag

freq_BodyBody_GyroJerkMag_mean       Double        Frequency domain mean for BodyBodyGyroJerkMag

freq_BodyBody_GyroJerkMag_std       Double        Frequency domain std for BodyBodyGyroJerkMag

freq_BodyBody_GyroJerkMag_meanFreq       Double        Frequency domain mean for BodyBodyGyroJerkMag

