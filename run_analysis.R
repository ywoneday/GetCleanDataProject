library(dplyr)
library(data.table)

datadir = "UCI HAR Dataset"
rawzipfile = "dataset.zip"


actLabelFile = "activity_labels.txt"
featureLabelFile = "features.txt"

subjectFilePrefix = "subject"
featureFilePrefix = "X"
activityFilePrefix = "Y"


trainDir = "train"
testDir  = "test"

#download the dataset
if (!file.exists(datadir)) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url,rawzipfile)
  unzip(rawzipfile)
}

#read the activity label file
actLabels <- read.table(file.path(datadir,actLabelFile))
actLabels <- as.character(actLabels[,2])
#print (actLabels)

#read the feature label file
featureLabels <- read.table(file.path(datadir,featureLabelFile))
featureLabels <- featureLabels[,2]
dataColName <- c("subject","activity",as.character(featureLabels))
#make the colnames unique by for bandsEnergy() features
dataColName <- make.unique(dataColName)

#print (featureLabels)
#print(length(dataRowName))

#read the subject, feature and activity, then combine them into one dataframe
readdata <- function(x,dirtype,postfixtype){
  subjectData <- fread(file.path(datadir,dirtype, paste0(subjectFilePrefix,postfixtype)))
  featureData <- fread(file.path(datadir,dirtype, paste0(featureFilePrefix,postfixtype)))
  activityData <- fread(file.path(datadir,dirtype, paste0(activityFilePrefix,postfixtype)))
  data <- data.table(subjectData, activityData, featureData)
  names(data) <- dataColName
  data
}

#load train data
dtrain <- readdata(datadir, "train", "_train.txt")

#load test data
dtest <- readdata(datadir, "test", "_test.txt")

#merge all data
dall <- rbind(dtrain,dtest)

#extract the measurements on the mean and standard deviation for each measurement. 
#we should exclude the meanFreq feature 
#the pattern is ".+-(mean|std)\\(\\)"
featureindex = c(1,2,grep(".+-(mean|std)\\(\\)", names(dall)))
dfilter <- select(dall, featureindex)

#Uses descriptive activity names to name the activities in the data set
dfilter <- mutate(dfilter, activity = factor(activity, labels=actLabels))

# labels the data set with descriptive variable names. 
# substitle the "Acc","Mag","Jerk","Gryo" to full Descriptive Name
# substitle the "BodyBody" to "Body"
# "Acc"  - " accelerometer "
# "Gyro" - " gyroscope "
# "Mag"  - " magnitude "
# "Jerk" - " Jerk signals "
# "BodyBody" - "Body"

names(dfilter) <- sub("BodyBody", "Body",names(dfilter))
names(dfilter) <- sub("tBody", "Time Body",names(dfilter))
names(dfilter) <- sub("fBody", "FFT Body",names(dfilter))
names(dfilter) <- sub("Acc", " accelerometer ",names(dfilter))
names(dfilter) <- sub("Gyro", " gyroscope ",names(dfilter))
names(dfilter) <- sub("Mag", "magnitude ",names(dfilter))
names(dfilter) <- sub("Jerk", "Jerk signals ",names(dfilter))

#print(names(dfilter))
#creates a second, independent tidy data set with the average of each variable for each activity and each subject.
daggregate <- aggregate(x = dfilter, by=list(subject,activity), FUN=mean)
dfinal <- select(daggregate,-c(3,4))
dfinal <- rename(dfinal, subject=Group.1, activity=Group.2)
names(dfinal)[3:68] <- sapply(names(dfinal)[3:68],paste0, "-mean")
write.table(dfinal,file="meanDataSet.tbl",row.name = FALSE)



