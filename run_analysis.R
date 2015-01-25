# Load the required libraries for the script
library(dplyr)

# Read in the relevant data files (assuming that the script resides at the 
# top level directory along with the data set)

# Training data file
xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
# Training subject file
subjectTrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
# Training activities file
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt")
# Test data file
xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
# Test subject file
subjectTest<-read.table("./UCI HAR Dataset/test/subject_test.txt")
# Test activities file
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt")
# Variables (features) file. This file will serve for the column headings.
features<-read.table("./UCI HAR Dataset/features.txt")
# Activities file. This file will serve for naming the activities
acts<-read.table("./UCI HAR Dataset/activity_labels.txt")

# Clean out illegal characters in the variable names
features[,2]<-gsub("\\(\\)", "Q", features[,2])
features[,2]<-gsub("\\(", "_", features[,2])
features[,2]<-gsub("\\)", "_", features[,2])
features[,2]<-gsub("-", "_", features[,2])

# Provide more meaningful prefixes to the variable names
features[,2]<-gsub("^t", "time", features[,2])
features[,2]<-gsub("^f", "frequency", features[,2])

# Filter the relevant variables for the final data set
meanLabels<-grep("_mean[_|Q]", features[,2])
stdLabels<-grep("_std[_|Q]", features[,2])
relevantLabels<-sort(c(meanLabels,stdLabels,c(562,563)))

# Remove the parentheses marker from the names
features[,2]<-gsub("Q", "", features[,2])

# Remove the "BodyBody" repetition from the names
features[,2]<-gsub("^frequencyBodyBody", "frequencyBody", features[,2])

# Add additional column names for the subject and activity variables
columnLabels<-c(features[,2], c("Subject", "Activity"))

# Bind the subject and activity columns to the training and test data sets
completeTrainSet<-cbind(xtrain,subjectTrain,ytrain)
completeTestSet<-cbind(xtest,subjectTest,ytest)

# Bind the training and test data sets
completeDataSet<-rbind(completeTrainSet,completeTestSet)

# Attach the column names for the resulting data set
colnames(completeDataSet)<-columnLabels

# Filter the required columns from the complete data set
filteredDataSet<-completeDataSet[,relevantLabels]

# Convert the activity numbers to meaningful labels
filteredDataSet$Activity<-factor(filteredDataSet$Activity,levels=acts[,1],labels=acts[,2])

# Derive the final data set
lbls<-colnames(filteredDataSet)
f<-function(x) mean(x)
tidyDataSet<-ddply(filteredDataSet,c("Subject","Activity"),colwise(f,lbls[1:66]))

# Save the data set to a file
write.table(tidyDataSet,file="TidyDataSet.txt",row.names=F)