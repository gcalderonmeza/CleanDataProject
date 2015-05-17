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
  
  # Merge subjects (test and train)
  subjects <- rbind(subjects, subjectsTest)

  # Merge activities (test and train)
  activities <- rbind(activities, activitiesTest)
  
  # Create the single Frame
  dataFrame <- cbind(subjects, activities, rbind(dataFrame, testData))

  # Remove unnecessary data
  rm(testData)
  rm(subjectsTest)
  rm(subjects)
  rm(activities)
  rm(activitiesTest)

  # Extract the columns for mean and std for all measurements
  dataFrameSelected <- dataFrame[sort(c(1, 2, grep("-mean", as.character(featureNames$V2)) + 2, grep("-std", as.character(featureNames$V2)) + 2))]
  
  dataTidy <- melt(dataFrameSelected, id.vars= c("Subject", "Activity"))

  dataSummary <- dcast(dataTidy, Subject + Activity ~ variable, fun.aggregate = mean)
  
  # write the output
  write.table(dataSummary, file="./output.txt", row.name=FALSE)
}