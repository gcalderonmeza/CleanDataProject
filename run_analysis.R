# CleanData Project
library(reshape2)

if (file.exists("./UCI HAR Dataset")) {

  # Load data from the given files
  featureNames <- read.table("./UCI HAR Dataset/features.txt")
  dataFrame <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = featureNames[,2])
  activities <- read.table("./UCI HAR Dataset/train/Y_train.txt", col.names = c("ActivityId"))
  testData <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = featureNames[,2])
  activitiesTest <- read.table("./UCI HAR Dataset/test/Y_test.txt", col.names = c("ActivityId"))
  subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c("Subject"))
  subjectsTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("Subject"))
  activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityId", "Activity"))
  
  # Merge subjects (test and train)
  subjects <- rbind(subjects, subjectsTest)

  # Merge activities (test and train)
  activities <- merge(rbind(activities, activitiesTest), activityLabels)
  
  # Create the single Frame
  dataFrame <- cbind(subjects, activities, rbind(dataFrame, testData))

  # Remove unnecessary data
  rm(testData)
  rm(subjectsTest)
  rm(subjects)
  rm(activities)
  rm(activitiesTest)
  rm(activityLabels)

  # Extract the columns for mean and std for all measurements
  dataFrameSelected <- dataFrame[sort(c(1, 3, grep("-mean", as.character(featureNames$V2)) + 3, grep("-std", as.character(featureNames$V2)) + 3))]
  
  dataTidy <- melt(dataFrameSelected, id.vars= c("Subject", "Activity"))

  dataSummary <- dcast(dataTidy, Subject + Activity ~ variable, fun.aggregate = mean)
  
  # write the output
  write.table(dataSummary, file="./output.txt", row.name=FALSE)
}