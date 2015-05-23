# CleanData Project
library(reshape2)

if (file.exists("./UCI HAR Dataset")) {
  # First figure out the names of the variables
  # Transform the names to make them more readable
  features <- read.table("./UCI HAR Dataset/features.txt")
  featureNames <- sub("\\(\\)","_", features[,2])
  featureNames <- sub("-","_", featureNames)
  featureNames <- sub("_-","_", featureNames)
  featureNames <- sub("^f","freq_", featureNames)
  featureNames <- sub("^t","time_", featureNames)
  featureNames <- sub("BodyAcc","Body_Acc", featureNames)
  featureNames <- sub("BodyGyro","Body_Gyro", featureNames)
  featureNames <- sub("_$","", featureNames)
  
  # Load the measurements
  dataFrame <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = featureNames)
  testData <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = featureNames)

  # Load the activities data
  activities <- read.table("./UCI HAR Dataset/train/Y_train.txt", col.names = c("ActivityId"))  
  activitiesTest <- read.table("./UCI HAR Dataset/test/Y_test.txt", col.names = c("ActivityId"))
  
  # Load the subjects data
  subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c("Subject"))
  subjectsTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("Subject"))
  
  # Load the activity labels
  activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityId", "Activity"))
  
  # Merge subjects (test and train)
  subjects <- rbind(subjects, subjectsTest)

  # Merge activities (test and train)
  activities <- merge(rbind(activities, activitiesTest), activityLabels)
  
  # Create the single Frame
  dataFrame <- cbind(subjects, activities, rbind(dataFrame, testData))

  # Remove unnecessary data
  rm(features)
  rm(testData)
  rm(subjectsTest)
  rm(subjects)
  rm(activities)
  rm(activitiesTest)
  rm(activityLabels)

  # Extract the columns for mean and std for all measurements
  dataFrameSelected <- dataFrame[sort(c(1, 3, grep("_mean", as.character(featureNames)) + 3, grep("_std", as.character(featureNames)) + 3))]
  
  dataTidy <- melt(dataFrameSelected, id.vars= c("Subject", "Activity"))

  dataSummary <- dcast(dataTidy, Subject + Activity ~ variable, fun.aggregate = mean)
  
  # write the output
  write.table(dataSummary, file="./output.txt", row.name=FALSE)
}