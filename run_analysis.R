# CleanData Project

if (file.exists("./UCI HAR Dataset")) {

  # Load data from the given files
  featureNames <- read.table("./UCI HAR Dataset/features.txt")
  dataFrame <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = featureNames[,2])
  testData <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = featureNames[,2])
  subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c("Subject"))
  subjectsTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("Subject"))
  subjects <- rbind(subjects, subjectsTest)

  # Create the single Frame
  dataFrame <- cbind(subjects, rbind(dataFrame, testData))

  # Remove unnecessary data
  rm(testData)
  rm(subjectsTest)
  rm(subjects)

  # Extract the columns fr mean and std for all measurements
  dataFrameSelected <- dataFrame[sort(c(1, grep("-mean", as.character(featureNames$V2)) + 1, grep("-std", as.character(featureNames$V2)) + 1))]
  
  # Tidy the data (I do not see a link to activity in the data)
  dataTidy <- melt(dataFrameSelected, id.vars= c("Subject"))

  dataSummary <- dcast(dataTidy, Subject ~ variable, fun.aggregate = mean)
  
  # write the output
  write.table(dataSummary, file="./output.txt", row.name=FALSE)
}