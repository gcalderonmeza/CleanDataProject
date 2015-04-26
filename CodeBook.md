# Code book for the CleanDataProject

## Data description

### Input data
As input the following files were used:

* ./UCI HAR Dataset/features.txt
* ./UCI HAR Dataset/train/X_train.txt
* ./UCI HAR Dataset/test/X_test.txt
* ./UCI HAR Dataset/train/subject_train.txt
* ./UCI HAR Dataset/test/subject_test.txt

No immediate way to link the activities with the with the records was found then the file: "activity_labels.txt" was n used.

### Transformation

The data in features.txt were used give names to the columns obtained by reading and merging X_Train.txt and X_Test.txt.

These data were also used to exract the measurements for mean and std from the original features which contained 561 measurements.

The data in subject_train.txt and subject_test.txt were used a column in the merged dataset. The name of this column is "Subject"

### Output data description
Field	Type	Description
Subject	Integer	The Id/Code of he subject. Values from 1 to 30

tBodyAcc.mean...X	Double	Time domain mean for BodyAcc axis X

tBodyAcc.mean...X	Double	Time domain mean for BodyAcc axis X
tBodyAcc.mean...Y	Double	Time domain mean for BodyAcc axis Y
tBodyAcc.mean...Z	Double	Time domain mean for BodyAcc axis Z
tBodyAcc.std...X	Double	Time domain std for BodyAcc axis X
tBodyAcc.std...Y	Double	Time domain std for BodyAcc axis Y
tBodyAcc.std...Z	Double	Time domain std for BodyAcc axis Z
tGravityAcc.mean...X	Double	Time domain mean for GravityAcc axis X
tGravityAcc.mean...Y	Double	Time domain mean for GravityAcc axis Y
tGravityAcc.mean...Z	Double	Time domain mean for GravityAcc axis Z
tGravityAcc.std...X	Double	Time domain std for GravityAcc axis X
tGravityAcc.std...Y	Double	Time domain std for GravityAcc axis Y
tGravityAcc.std...Z	Double	Time domain std for GravityAcc axis Z
tBodyAccJerk.mean...X	Double	Time domain mean for BodyAccJerk axis X
tBodyAccJerk.mean...Y	Double	Time domain mean for BodyAccJerk axis Y
tBodyAccJerk.mean...Z	Double	Time domain mean for BodyAccJerk axis Z
tBodyAccJerk.std...X	Double	Time domain std for BodyAccJerk axis X
tBodyAccJerk.std...Y	Double	Time domain std for BodyAccJerk axis Y
tBodyAccJerk.std...Z	Double	Time domain std for BodyAccJerk axis Z
tBodyGyro.mean...X	Double	Time domain mean for BodyGyro axis X
tBodyGyro.mean...Y	Double	Time domain mean for BodyGyro axis Y
tBodyGyro.mean...Z	Double	Time domain mean for BodyGyro axis Z
tBodyGyro.std...X	Double	Time domain std for BodyGyro axis X
tBodyGyro.std...Y	Double	Time domain std for BodyGyro axis Y
tBodyGyro.std...Z	Double	Time domain std for BodyGyro axis Z
tBodyGyroJerk.mean...X	Double	Time domain mean for BodyGyroJerk axis X
tBodyGyroJerk.mean...Y	Double	Time domain mean for BodyGyroJerk axis Y
tBodyGyroJerk.mean...Z	Double	Time domain mean for BodyGyroJerk axis Z
tBodyGyroJerk.std...X	Double	Time domain std for BodyGyroJerk axis X
tBodyGyroJerk.std...Y	Double	Time domain std for BodyGyroJerk axis Y
tBodyGyroJerk.std...Z	Double	Time domain std for BodyGyroJerk axis Z
tBodyAccMag.mean..	Double	Time domain mean for BodyAccMag
tBodyAccMag.std..	Double	Time domain std for BodyAccMag
tGravityAccMag.mean..	Double	Time domain mean for GravityAccMag
tGravityAccMag.std..	Double	Time domain std for GravityAccMag
tBodyAccJerkMag.mean..	Double	Time domain mean for BodyAccJerkMag
tBodyAccJerkMag.std..	Double	Time domain std for BodyAccJerkMag
tBodyGyroMag.mean..	Double	Time domain mean for BodyGyroMag
tBodyGyroMag.std..	Double	Time domain std for BodyGyroMag
tBodyGyroJerkMag.mean..	Double	Time domain mean for BodyGyroJerkMag
tBodyGyroJerkMag.std..	Double	Time domain std for BodyGyroJerkMag
fBodyAcc.mean...X	Double	Frequency domain mean for BodyAcc for axis X
fBodyAcc.mean...Y	Double	Frequency domain mean for BodyAcc for axis Y
fBodyAcc.mean...Z	Double	Frequency domain mean for BodyAcc for axis Z
fBodyAcc.std...X	Double	Frequency domain std for BodyAcc for axis X
fBodyAcc.std...Y	Double	Frequency domain std for BodyAcc for axis Y
fBodyAcc.std...Z	Double	Frequency domain std for BodyAcc for axis Z
fBodyAcc.meanFreq...X	Double	Frequency domain mean for BodyAcc for axis X
fBodyAcc.meanFreq...Y	Double	Frequency domain mean for BodyAcc for axis Y
fBodyAcc.meanFreq...Z	Double	Frequency domain mean for BodyAcc for axis Z
fBodyAccJerk.mean...X	Double	Frequency domain mean for BodyAccJerk for axis X
fBodyAccJerk.mean...Y	Double	Frequency domain mean for BodyAccJerk for axis Y
fBodyAccJerk.mean...Z	Double	Frequency domain mean for BodyAccJerk for axis Z
fBodyAccJerk.std...X	Double	Frequency domain std for BodyAccJerk for axis X
fBodyAccJerk.std...Y	Double	Frequency domain std for BodyAccJerk for axis Y
fBodyAccJerk.std...Z	Double	Frequency domain std for BodyAccJerk for axis Z
fBodyAccJerk.meanFreq...X	Double	Frequency domain mean for BodyAccJerk for axis X
fBodyAccJerk.meanFreq...Y	Double	Frequency domain mean for BodyAccJerk for axis Y
fBodyAccJerk.meanFreq...Z	Double	Frequency domain mean for BodyAccJerk for axis Z
fBodyGyro.mean...X	Double	Frequency domain mean for BodyGyro for axis X
fBodyGyro.mean...Y	Double	Frequency domain mean for BodyGyro for axis Y
fBodyGyro.mean...Z	Double	Frequency domain mean for BodyGyro for axis Z
fBodyGyro.std...X	Double	Frequency domain std for BodyGyro for axis X
fBodyGyro.std...Y	Double	Frequency domain std for BodyGyro for axis Y
fBodyGyro.std...Z	Double	Frequency domain std for BodyGyro for axis Z
fBodyGyro.meanFreq...X	Double	Frequency domain mean for BodyGyro for axis X
fBodyGyro.meanFreq...Y	Double	Frequency domain mean for BodyGyro for axis Y
fBodyGyro.meanFreq...Z	Double	Frequency domain mean for BodyGyro for axis Z
fBodyAccMag.mean..	Double	Frequency domain mean for BodyAccMag
fBodyAccMag.std..	Double	Frequency domain std for BodyAccMag
fBodyAccMag.meanFreq..	Double	Frequency domain mean for BodyAccMag
fBodyBodyAccJerkMag.mean..	Double	Frequency domain mean for BodyBodyAccJerkMag
fBodyBodyAccJerkMag.std..	Double	Frequency domain std for BodyBodyAccJerkMag
fBodyBodyAccJerkMag.meanFreq..	Double	Frequency domain mean for BodyBodyAccJerkMag
fBodyBodyGyroMag.mean..	Double	Frequency domain mean for BodyBodyGyroMag
fBodyBodyGyroMag.std..	Double	Frequency domain std for BodyBodyGyroMag
fBodyBodyGyroMag.meanFreq..	Double	Frequency domain mean for BodyBodyGyroMag
fBodyBodyGyroJerkMag.mean..	Double	Frequency domain mean for BodyBodyGyroJerkMag
fBodyBodyGyroJerkMag.std..	Double	Frequency domain std for BodyBodyGyroJerkMag
fBodyBodyGyroJerkMag.meanFreq..	Double	Frequency domain mean for BodyBodyGyroJerkMag
